
inStock.sort = { "bread" => 1, "milk" => 2, "eggs" => 5, "Flour" => 1, }

puts "Please select an option."
puts "Type 'add' if you would like to add an item."
puts "Type 'edit' if you would like to edit an item."
puts "Type 'delete' if you would like to delete an item. "
puts "Type 'display' if you would like a list of all items in your pantry."
puts "Please only use whole numbers to describe stock levels."
choice = gets.chomp

case choice

when 'add'
	puts "What item would you like to add?"
	item = gets.chomp
 	  if inStock[item.to_sym].nil?
	  puts "What is the amount that you currently have in stock?"
	  stock = gets.chomp

	  inStock[item.to_sym] = stock.to_i
	  puts "Your item has been added to your pantry!"

	else
          puts "You already have #{item} in your pantry. Please edit this item instead of adding."
end


when 'edit'
	puts "What item would you like to update in your pantry?"
	item = gets.chomp
	  if inStock[item.to_sym].nil?
	  puts "Sorry, that item does not exist in your pantry."
	else
	  puts "Please give the new stock level that you have."
	  inStock[item.to_sym] = stock.to_i
	  puts "You have updated #{item} to have the new stock level of #{stock}"
end

when 'delete'
	puts "What item would you like to delete out of your pantry?"
	item = gets.chomp
	  if inStock[item.to_sym].nil?
	  puts "Sorry, that item does not exist in your pantry."
	else
	  inStock.delete(item)
	  puts "Your item has been deleted"
end

when 'display'
	puts "Here is a list of the items in your pantry."
	inStock.each do |item, stock|
	puts "#{item}: #{stock}"
end
end


