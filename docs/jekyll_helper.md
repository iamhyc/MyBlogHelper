## Jekyll Helper



### Liquid Templating

* Routing: 

  ```
  	{{ "route-path" | relative_url | absolute_url}}
  ```

* Date object:

  ```
  {{ site.time | date_to_xmlschema }}        ---   2008-11-07T13:07:54-08:00
  {{ site.time | date_to_rfc822 }}           ---   Mon, 07 Nov 2008 13:07:54 -0800
  {{ site.time | date_to_string }}           ---   07 Nov 2008
  {{ site.time | date_to_long_string }}      ---   07 November 2008
  ```

* Escape

  ```
  {{ "http://foo.com/?q=foo, \bar?" | uri_escape }}
  ```

* Utility

  ```
  {{ page.content | number_of_words }}
  	Count the number of words in some text.
  	
  {{ page.tags | array_to_sentence_string }}
  	Convert an array into a sentence. Useful for listing tags. Optional argument for connector.

  {{ page.excerpt | markdownify }}
  	Convert a Markdown-formatted string into HTML.

  {{ page.title | smartify }}
  	Convert "quotes" into “smart quotes.”
  ```



### Jekyll's data files

