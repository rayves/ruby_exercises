=begin
Item Inventory
 A grocery store is keeping track of their produce inventory with two hashes, fruits and veggies. Modify the code in the scaffold to complete the following tasks:

Change the keys in fruits so that they are symbols instead of strings. 

Add an entry peach to fruits for $5. 

Update the price of avocado to $3. 

Remove orange from fruits.

Combine the two hashes and store it in a new variable called inventory. 

Print out all the items in inventory in the format:

Item: banana  Cost: $2
Item: avocado Cost: $3
Item: carrot Cost: $1.75
Item: celery Cost: $2.75
Item: kale Cost: $4
=end






fruits = {"banana" => 2, "orange" => 2.5, "avocado" => 2.45}

veggies = {:carrot => 1.75, :celery => 2.75, :kale => 4}

# Your code here
fruits.transform_keys!(&:to_sym) 

fruits[:peach] = 5

fruits[:avocado] = 3

fruits.delete(:orange)

inventory = fruits.merge(veggies)

inventory.each do |item, price|
    puts "Item: #{item} Cost: $#{price}"
end





# # where merging arrays and want to add amounts togeother
# fruits = {:carrot => 2}

# veggies = {:carrot => 1.75}

# inventory = fruits.merge(veggies){|key, oldval, newval| oldval + newval}

# pp inventory