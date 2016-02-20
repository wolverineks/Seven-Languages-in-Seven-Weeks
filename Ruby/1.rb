# Do:
# Print the string "Hello, world".
# For the string "Hello, Ruby", find the index of the word "Ruby".
# Print your name 10 times.
# Print the string "This is sentence number 1", where the number 1 changes from 1 - 10.
# Run a Ruby program from a file.
# Bonus: Write a program that picks a random number, asks a user to guess, and respond with "too high", "too low", or "correct".

#############################################################################

# Print the string "Hello, world".

print "Hello, world\n"
puts "Hello, world"
p "Hello, world"

# For the string "Hello, Ruby", find the index of the word "Ruby".

string = "Hello, Ruby"

p string.index("Ruby")

# Print your name 10 times.

10.times { print "your name\n" }
10.times { puts "your name" }

i = 0
while i < 10
  print "#{i + 1}: your name\n"
  i += 1
end


for i in 0..9 do
  print "#{i + 1}: your name\n"
end

# Print the string "This is sentence number 1", where the number 1 changes from 1 - 10.

i = 0
while i < 10
  print "This is sentence number #{i + 1}.\n"
  i += 1
end

for i in 0..9 do
  print "This is sentence number #{i + 1}.\n"
end

# Run a Ruby program from a file.

# ruby 1.rb

# Bonus: Write a program that picks a random number, asks a user to guess, and respond with "too high", "too low", or "correct".

num = rand(10000)
puts "Try to guess my number."
begin
  guess = gets.chomp.to_i
  if guess > num
    puts "Too high. Try again."
  elsif guess < num
    puts "Too low. Try again."
  else
    puts "You got it!"
  end
end until guess == num
