## Jekyll Helper



### Liquid Templating

* Routing: 

  ```jade
  	{{ "route-path" | relative_url | absolute_url}}
  ```

* Date object:

  ```jade
  {{ site.time | date_to_xmlschema }}        ---   2008-11-07T13:07:54-08:00
  {{ site.time | date_to_rfc822 }}           ---   Mon, 07 Nov 2008 13:07:54 -0800
  {{ site.time | date_to_string }}           ---   07 Nov 2008
  {{ site.time | date_to_long_string }}      ---   07 November 2008
  ```

* Escape

  ```jade
  {{ "http://foo.com/?q=foo, \bar?" | uri_escape }}
  ```

* Utility

  ```jade
  {{ page.content | number_of_words }}
  	Count the number of words in some text.
  	
  {{ page.tags | array_to_sentence_string }}
  	Convert an array into a sentence. Useful for listing tags. Optional argument for connector.

  {{ page.excerpt | markdownify }}
  	Convert a Markdown-formatted string into HTML.

  {{ page.title | smartify }}
  	Convert "quotes" into “smart quotes.”
  ```

* Post Object

  ```jade
  post in site.posts
  	post.url
  	post.title
  	post.excerpt # the first paragraph
  ```

* Site Object

  ```jade
  site.time
  site.pages # all pages
  site.posts # in reverse time order
  site.data # loaded from /_data
  site.static_files
  	- file.path
  	- file.modified_time
  	- file.name
  	- file.basename
  	- file.extname
  ```

* Page Object

  ```jade
  page.content
  page.title
  page.url
  page.date
  page.id
  ```

  ​


### Jekyll Font matter

```yaml
---
# Predefined Global Variables
layout: default
permalink: /custom-path/title.html # only for post URLs
published: True # False for not pulish
# Custom Varaibles
title: page_title # access via {{page.title}}
# predefined Variables for Posts
data: YYYY-MM-DD HH:MM:SS # overide the post date
categories: custom-category # YAML list
tags: my-tag # YAML list
---
```



