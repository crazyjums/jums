# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# https://doc.scrapy.org/en/latest/topics/items.html

import scrapy


class BaiduhrItem(scrapy.Item):
    # define the fields for your item here like:
    # name = scrapy.Field()
    workName = scrapy.Field()
    workPlace = scrapy.Field()
    workContent = scrapy.Field()#工作内容
    serviceCondition = scrapy.Field() #工作要求
    education = scrapy.Field()
    postType = scrapy.Field()
    publishDate = scrapy.Field()
    needPeople = scrapy.Field()
