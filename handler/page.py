#!/usr/bin/env python
# coding=utf-8
#
# Copyright 2017 ihasy.com
# Do have a faith in what you're doing.
# Make your life a story worth telling.

import uuid
import hashlib
from PIL import Image
import io
import time
import json
import re
import urllib.request
import tornado.web
import lib.jsonp

from .base import *
from lib.variables import *

class AboutHandler(BaseHandler):
    def get(self, template_variables = {}):
        self.render("page/about.html", **template_variables)
