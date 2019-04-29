# -*- coding: utf-8 -*-
import scrapy
from tencent.items import TencentItem

class HrSpider(scrapy.Spider):
    name = 'hr'
    allowed_domains = ['tencent.com']
    start_urls = ['http://hr.tencent.com/position.php?&start=0']


    def parse(self, response):
        infos = response.xpath('//tr[@class="even"] | //tr[@class="odd"]')

        for info in infos:
            item = TencentItem()
            item['positionName'] = info.xpath('td[1]/a/text()').extract()[0]
            item['positionUrl'] = info.xpath('td[1]/a/@href').extract()[0]
            if len(info.xpath('td[2]/text()')):
                item['positionType'] = info.xpath('td[2]/text()').extract()[0]
            else:
                item['positionType'] = ''
            item['positionPeople'] = info.xpath('td[3]/text()').extract()[0]
            item['workLocation'] = info.xpath('td[4]/text()').extract()[0]
            item['publishTime'] = info.xpath('td[5]/text()').extract()[0]

            yield item

        #判断是否是最后一页
        if not len(response.xpath('//a[@class="noactive" and @id="next"]')):
            yield scrapy.Request(url='http://hr.tencent.com/' + str(response.xpath('//*[@id="next"]/@href').extract()[0]),callback=self.parse)