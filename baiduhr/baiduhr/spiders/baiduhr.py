#coding:utf-8
import scrapy
from scrapy.spiders import CrawlSpider
from baiduhr.items import BaiduhrItem
import json,re
import sys
sys.setdefaultencoding="utf8"

class BaiduHr(CrawlSpider):
    name = 'baiduhr'
    allowed_domains = ['baidu.com']


    def __init__(self):
        self.start_urls = [ 'https://talent.baidu.com/baidu/web/httpservice/getPostList?workPlace={0}&recruitType=2&pageSize=10&curPage=']
        self.workP = {'北京': '0%2F4%2F7%2F9', '杭州': '0%2F4%2F204%2F207', '上海': '0%2F4%2F10%2F11',
                 '福州': '0%2F4%2F248%2F249', '广州': '0%2F4%2F396%2F397',
                 '深圳': '0%2F4%2F396%2F399', '东莞': '0%2F4%2F396%2F432', '海口': '0%2F4%2F450%2F452',
                 '阳泉': '0%2F4%2F43%2F52113720', '海外': '0%2F4%2F90100%2F196769930'
                 }
        self.pages = {'北京': 154, '杭州': 1, '上海': 17, '福州': 2, '广州': 2, '深圳': 9, '东莞': 1, '海口': 2, '阳泉': 1, '海外': 1}

    def start_requests(self):
        for work in self.workP.values():
            url_ = self.start_urls[0].format(str(work))
            for i in range(1,self.pages[list(self.workP.keys())[list(self.workP.values()).index(str(work))]] + 1):
                url = url_ + str(i)
                yield scrapy.Request(
                    method="GET",
                    dont_filter=True,
                    callback=self.parse,
                    url = url
                )



    def parse(self, response):
        # content = json.loads(response.body) #将一个json个数的数据转换成Python的dictionary
        body = response.body
        # print(response.url)
        content = body.decode("utf-8")
        contents = json.loads(content)
        print(type(contents))
        postList = contents['postList']
        for li in postList:
            item = BaiduhrItem()
            item["workName"] = li["name"]
            item['education'] = li['education']
            item['publishDate'] = li['publishDate']
            item['postType'] = li['postType']
            item['workPlace'] = list(self.workP.keys())[list(self.workP.values()).index(re.search(r"0\%\w*\%\w*\%\w*", response.url).group())]
            item['needPeople'] = li['recruitNum']
            item['serviceCondition'] = li['serviceCondition']
            item['workContent'] = li['workContent']
            print(item)
            yield item
