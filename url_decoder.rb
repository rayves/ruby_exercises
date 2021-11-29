=begin

A query string is anything in a URL that comes after a ? it typically consists of key value pairs separated by an &. An example would be this www.html5zombo.com/test?volume=full 

The base URL is everything before the first '/' => www.html5zombo.com
The route is what comes after that but before the ?=> test
The Query String is what comes after the '?' => volume=full

This challenge is a bit longer and each step builds on the previous one. The tests for all previous parts should pass at each step. Don't feel like you have to solve it all at once. Run the tests and write the code to pass each one at a time. You should aim to finish at least Part One today and make an attempt at part Two. If you want a challenge try the Parts marked Bonus. The Parts marked Extra are tougher and may require you to do some extra research or cover things we haven't look at much in class. Reach out to your educators if you get up to this part and are looking for direction.

Part One
Write a method parse_url that takes in a URL string, and converts the query into a ruby hash. The return should be a hash and have the key query , this will be a hash with the key value pairs from the decoded query string, you can assume for now that the value is a string.

Return hash example: { query: { key: "value" } }

for example:

parse_url("www.html5zombo.com/test?volume=full")  => { query: { volume: "full" } }

Part Two
Great! Now extend the same method so that it also adds the base URL and the route to the hash, with there own keys on the first level

Return hash example: { base_url: "a string", route: "a string", query: { key: "value" } }

parse_url("www.html5zombo.com/test?volume=full")
=> {
      base_url: "www.html5zombo.com",
      route: "test",
      query: { 
        volume: "full"
      }
   }


Part Three - Bonus
Awesome! However sometimes we will receive multiple key value pairs in the query string that are separated with an ampersand &. Make sure the method can handle this now.

Return hash example: {base_url: "a string", route: "a string", query: {key1: "value", key2: "value"} }

parse_url("www.html5zombo.com/test?volume=full&autoplay=yes")
=> {
      base_url: "www.html5zombo.com",
      route: "test",
      query: { 
        volume: "full",
        autoplay: "yes"
      }
   }


Part Four - Bonus
Amazing! But not all strings are one word. In a query string the space character \s or ' ' is represented with a percent sign and 20 %20. The method will need to take values that contain %20 and replace them with spaces.

Return hash example: { base_url: "a string", route: "a string", query: { key: "value with spaces" } }

parse_url("www.html5zombo.com/test?title=What%20is%20this%20text")
=> {
      base_url: "www.html5zombo.com",
      route: "test",
      query: { 
        title: "What is this text",
      }
   }

Part Five - Extra Datatypes
Fantastic! But not all values in the query string will be type string they can also be numbers or boolean values. Make the method now infer the type of data and convert the value to that type. For simplicity the tests will check for true false and Integers. Don't forget to refactor your method and consider moving some of the code into a separate method to clean it up. Make sure that the previous tests are still working as expected.

Return hash example: {base_url: "a string", route: "a string", query: {number: 123, bool: true} }

parse_url("www.html5zombo.com/test?id=123&admin=true")
=> {
      base_url: "www.html5zombo.com",
      route: "test",
      query: { 
        id: 123,
        admin: true
      }
   }

=end

def parse_url(url_string)
	# Your code here
	# Run the tests!
end