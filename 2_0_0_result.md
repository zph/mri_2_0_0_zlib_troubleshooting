# Ruby MRI 2.0.0 Results

This is a direct paste from a clean Vagrant Precise32 VM build using RVM as the Ruby version manager.

```Bash
vagrant@precise32:~$ ruby -v
ruby 2.0.0p195 (2013-05-14 revision 40734) [i686-linux]
vagrant@precise32:~$ ruby /vagrant/wunderground.rb
/home/vagrant/.rvm/rubies/ruby-2.0.0-p195/lib/ruby/2.0.0/net/http/response.rb:357:in `finish': incorrect header check (Zlib::DataError)
  from /home/vagrant/.rvm/rubies/ruby-2.0.0-p195/lib/ruby/2.0.0/net/http/response.rb:357:in `finish'
	from /home/vagrant/.rvm/rubies/ruby-2.0.0-p195/lib/ruby/2.0.0/net/http/response.rb:262:in `ensure in inflater'
	from /home/vagrant/.rvm/rubies/ruby-2.0.0-p195/lib/ruby/2.0.0/net/http/response.rb:262:in `inflater'
	from /home/vagrant/.rvm/rubies/ruby-2.0.0-p195/lib/ruby/2.0.0/net/http/response.rb:274:in `read_body_0'
	from /home/vagrant/.rvm/rubies/ruby-2.0.0-p195/lib/ruby/2.0.0/net/http/response.rb:201:in `read_body'
	from /home/vagrant/.rvm/rubies/ruby-2.0.0-p195/lib/ruby/2.0.0/open-uri.rb:328:in `block (2 levels) in open_http'
	from /home/vagrant/.rvm/rubies/ruby-2.0.0-p195/lib/ruby/2.0.0/net/http.rb:1413:in `block (2 levels) in transport_request'
	from /home/vagrant/.rvm/rubies/ruby-2.0.0-p195/lib/ruby/2.0.0/net/http/response.rb:162:in `reading_body'
	from /home/vagrant/.rvm/rubies/ruby-2.0.0-p195/lib/ruby/2.0.0/net/http.rb:1412:in `block in transport_request'
	from /home/vagrant/.rvm/rubies/ruby-2.0.0-p195/lib/ruby/2.0.0/net/http.rb:1403:in `catch'
	from /home/vagrant/.rvm/rubies/ruby-2.0.0-p195/lib/ruby/2.0.0/net/http.rb:1403:in `transport_request'
	from /home/vagrant/.rvm/rubies/ruby-2.0.0-p195/lib/ruby/2.0.0/net/http.rb:1376:in `request'
	from /home/vagrant/.rvm/rubies/ruby-2.0.0-p195/lib/ruby/2.0.0/open-uri.rb:319:in `block in open_http'
	from /home/vagrant/.rvm/rubies/ruby-2.0.0-p195/lib/ruby/2.0.0/net/http.rb:852:in `start'
	from /home/vagrant/.rvm/rubies/ruby-2.0.0-p195/lib/ruby/2.0.0/open-uri.rb:313:in `open_http'
	from /home/vagrant/.rvm/rubies/ruby-2.0.0-p195/lib/ruby/2.0.0/open-uri.rb:708:in `buffer_open'
	from /home/vagrant/.rvm/rubies/ruby-2.0.0-p195/lib/ruby/2.0.0/open-uri.rb:210:in `block in open_loop'
	from /home/vagrant/.rvm/rubies/ruby-2.0.0-p195/lib/ruby/2.0.0/open-uri.rb:208:in `catch'
	from /home/vagrant/.rvm/rubies/ruby-2.0.0-p195/lib/ruby/2.0.0/open-uri.rb:208:in `open_loop'
	from /home/vagrant/.rvm/rubies/ruby-2.0.0-p195/lib/ruby/2.0.0/open-uri.rb:149:in `open_uri'
	from /home/vagrant/.rvm/rubies/ruby-2.0.0-p195/lib/ruby/2.0.0/open-uri.rb:688:in `open'
	from /home/vagrant/.rvm/rubies/ruby-2.0.0-p195/lib/ruby/2.0.0/open-uri.rb:34:in `open'
	from /vagrant/wunderground.rb:3:in `<main>'
```