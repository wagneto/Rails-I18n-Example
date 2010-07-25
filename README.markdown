Rails I18n API Example - Zelig St. Groceries
============================================

This site was created as a part of a talk for the July 2010 meeting of Austin on Rails. It serves as a case study to explore localization and internationalization using Rails 3.

## Demo

Check it out at: [http://zelig-st-groceries.heroku.com/](http://zelig-st-groceries.heroku.com/)

Try changing the locale by adding <tt>[?locale=ja](http://zelig-st-groceries.heroku.com?locale=ja)</tt> or <tt>[?locale=fr]((http://zelig-st-groceries.heroku.com?locale=fr)</tt> to the end of the URL.

# How To Use

- <tt>git clone git://github.com/mattt/Rails-I18n-Example.git zelig-st-groceries</tt>
- <tt>cd zelig-st-groceries</tt>
- <tt>rake db:migrate db:seed</tt>
- <tt>rails s</tt>
- Open localhost:3000 in your browser

You can change the locale of the application by setting one of the following:

- **<tt>locale</tt> Parameter**: (eg localhost:3000?locale=ja)
- **Top-Level Domain\***: (eg ja.localhost:3000)
- **Subdomain\***: (eg localhost.jp:3000)

## \* Optional Step to Enable Locale Switching with Subdomains and TLDs on localhost

Add the following at the end of <tt>/etc/hosts</tt>:

<pre><code>
  127.0.0.1 en.localhost
  127.0.0.1 ja.localhost
  127.0.0.1 fr.localhost
  
  127.0.0.1 localhost.jp
  127.0.0.1 localhost.fr
</code></pre>

## Dependencies

Gems:

- [Rails 3.0 Beta 4](http://github.com/rails/rails/tree/v3.0.0.beta4)
- [Paperclip](http://github.com/thoughtbot/paperclip)
- [Quantity](http://github.com/bhuga/quantity)

Plugins:

- [Globalize2](http://github.com/joshmh/globalize2)
- [easy\_globalize2\_accessors](http://github.com/tomash/easy_globalize2_accessors)

## License

Zelig St. Groceries is licensed under the MIT License:

  Copyright (c) 2010 Mattt Thompson (http://mattt.me/)

  Permission is hereby granted, free of charge, to any person obtaining a copy
  of this software and associated documentation files (the "Software"), to deal
  in the Software without restriction, including without limitation the rights
  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
  copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in
  all copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
  THE SOFTWARE.
  
## Credit

Many thanks to [Amy Unruh](http://twitter.com/amygdala) and [Damon Clinksdale](http://twitter.com/damon) for allowing me the opportunity to speak at the July meeting of [Austin on Rails](http://austinonrails.org/).