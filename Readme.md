# A stupid simple Ruby/V8 functions POC
### Installation
* Clone this repo
* `bundle install`

### Getting started
After installaing dependencies, run `ruby app.rb`.

Grefen will evaluate all the JavaScript files within the `example-functions` directory and report the output (if any) as well as some statistics from V8.

Sample output:
```
--> Evaluating ./example-functions/fibonacci.js
89
{:total_physical_size=>452640, :total_heap_size_executable=>524288, :total_heap_size=>2895872, :used_heap_size=>442264, :heap_size_limit=>1501560832}

--> Evaluating ./example-functions/hello-world.js
"Hello Jamie"
{:total_physical_size=>452088, :total_heap_size_executable=>524288, :total_heap_size=>2895872, :used_heap_size=>441712, :heap_size_limit=>1501560832}
```