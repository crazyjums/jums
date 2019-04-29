# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# https://doc.scrapy.org/en/latest/topics/items.html

import scrapy


class AlibabaItem(scrapy.Item):
    # define the fields for your item here like:
    # name = scrapy.Field()
    jobName = scrapy.Field()
    jobTypeFirst = scrapy.Field() #第一大类
    jobTypeSecond = scrapy.Field() #第二小类
    jobPublicTime = scrapy.Field()
    jobLocation = scrapy.Field()
    jobNeedpeople = scrapy.Field()
    degree = scrapy.Field()
    workExperience = scrapy.Field()
    departmentName = scrapy.Field()
    requirement = scrapy.Field()
    isNew = scrapy.Field()

