# Find:
# Find out how to access files with and without code blocks. What is the benefit of the code block?
# How would you translate a hash to an array? Can you translate arrays to hashes?
# Can you iterate through a hash?
# You can use Ruby arrast as stacks. What other common data structures do arrays support?

# Do:
# Print the contenss of an array of sixteen numbers, four numbers at a time, using each, each_slice.
# Modify the Tree class to accept a nested structure of hashes.
# Write a grep that will print the lines of a file having any occurance of a phrase anywhere in that line, using regex.

#############################################################################

# Find out how to access files with and without code blocks. What is the benefit of the code block?

File.new("deleteme1.rb", "w")

f = File.open("deleteme1.rb", "w") do |f|
  f << "created with a block"
end

f = File.open("deleteme1.rb", "r")
puts f.read

File.new("deleteme2.rb", "w")

f = File.open("deleteme2.rb", "w")
f << "not created with a block"
f.close

f = File.open("deleteme2.rb", "r")
puts f.read

# How would you translate a hash to an array? Can you translate arrays to hashes?

hash = {a: 1, b: 2, c: 3}

print hash.to_a
print "\n"

array = hash.to_a

print array.to_h

# Can you iterate through a hash?

hash = {a: 1, b: 2, c: 3}

hash.each { |k,v| puts "#{k}: #{v}\n" }

# You can use Ruby arrays as stacks. What other common data structures do arrays support?

# not familiar with data structures yet.

# Print the contents of an array of sixteen numbers, four numbers at a time, using each, each_slice.

array = (1..16).to_a
first, second, third, fourth = [], [], [], []
array.each do |e|
  if array.index(e) < 4
    first << e
  elsif array.index(e) < 8
    second << e
  elsif array.index(e) < 12
    third << e
  else
    fourth << e
  end
end
print "#{first}\n#{second}\n#{third}\n#{fourth}\n"

array.each_slice(4) { |e| print "#{e}\n"}

# Modify the Tree class to accept a nested structure of hashes.

# class Tree
#   attr_accessor :name, :tree, :children
#
#   def initialize(tree)
#     @tree = tree
#     @name = tree.first[0]
#     @children = tree.first[1]
#   end
#
#   def visit_all(&block)
#     visit(&block)
#     children.each { |c| c.visit_all &block }
#   end
#
#   def visit(&block)
#     block.call self
#   end
# end
#
#
# # ruby_tree = Tree.new("Ruby", [Tree.new("Reia"), Tree.new("MacRuby")])
#
# ruby_tree = Tree.new({'grandpa' => {'dad' => {'child 1' => {},                        'child 2' => {}}, 'uncle' => {'child 3' => {}, 'child 4' => {}}}})
#
# puts ruby_tree.children
#
# puts "Visiting a node"
# ruby_tree.visit { |node| puts node.name }
# puts "visiting entire tree"
# ruby_tree.visit_all { |node| puts node.node_name }

# Write a grep that will print the lines of a file having any occurance of a phrase anywhere in that line, using regex.

f = File.open("deleteme3", "w+") do |f|
  f << "First Line\nSecond Line\nThird Line\n"
end

f = File.open("deleteme3", "r") do |f|
  f.each_with_index do |line, i|
    puts "#{i + 1}: #{line}" if line.include?("d Lin")
    i += 1
  end
end
