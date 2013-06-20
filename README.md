# README
## mri_2_0_0_zlib_troubleshooting

## The Issue

This api call to the [Weather Underground](http://www.wunderground.com/weather/api/) service works as expected using MRI ruby-1.9.3-p429 but not when using MRI ruby-2.0.0-p195.

This gist shows the code and the response when using 1.9.3 and 2.0.0.

The code sample is taken directly from the Weather Underground's [documentation](http://www.wunderground.com/weather/api/d/docs?d=resources/code-samples#ruby)

**Update**

After working with @zph and @injekt there have been some interesting findings. I am including `wunderground-working-2_0.rb` as an example of a working version of the Weather Underground API using Ruby MRI 2.0.0.

The interesting piece was when @injekt showed that the [rest-client gem](https://github.com/rest-client/rest-client) could call the api without error. He then found that the gem was manually rescuing the `Zlib::DataError` (https://github.com/rest-client/rest-client/blob/master/lib/restclient/request.rb#L258).

So, for now, if I want to use the Weather Underground API and MRI 2.0.0, I'll be doing it with the rest-client gem.

Additionally interesting reading can be found with this [Ruby core commit](https://github.com/ruby/ruby/commit/3cf7d1b57e3622430065f6a6ce8cbd5548d3d894), where a significant update was made to the Zlib libraries.

Troubleshooting Repo related to https://gist.github.com/geopet/5782836
