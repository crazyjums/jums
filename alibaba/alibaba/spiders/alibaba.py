from lxml import etree
import scrapy
from scrapy.linkextractors import LinkExtractor
from scrapy.spiders import Rule,CrawlSpider
from alibaba.items import AlibabaItem
import json





class AlibabaSpider(CrawlSpider):
    name = "alibabahr"
    allowed_domains = ["alibaba.com"]

    def __init__(self,pageIndex):
        self.start_urls = ["https://job.alibaba.com/zhaopin/socialPositionList/doList.json"]
        self.pageIndex = pageIndex



    def start_requests(self):
        for page in range(int(self.pageIndex)):
            yield scrapy.FormRequest(
                url = self.start_urls[0],
                callback = self.parse,
                formdata = {"pageIndex":str(page),"pageSize":"10"},
            )

    def parse(self, response):
        content = json.loads(response.body)['returnValue']
        pageIndex = content['pageIndex']
        jobDatas = content['datas']
        print("pageIndex:" + str(pageIndex))
        # print("useragent:" + response.request.headers[b'USER-AGNET'])
        # print(jobDates)

        # items = []
        for jobdata in jobDatas:
            item = AlibabaItem()
            item['jobName'] = jobdata['name']
            item['jobTypeFirst'] = jobdata['firstCategory']
            item['jobTypeSecond'] = jobdata['secondCategory']
            item['isNew'] = jobdata['isNew']
            item['jobLocation'] = jobdata['workLocation']
            item['jobNeedpeople'] = jobdata['recruitNumber']
            item['degree'] = jobdata['degree']
            item['workExperience'] = jobdata['workExperience']
            item['departmentName'] = jobdata['departmentName']
            item['requirement'] = jobdata['requirement']
            # items.append(item)
            print(item)
            yield item

        # yield items
