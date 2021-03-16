require_relative 'super_useful'

# puts "'5' == #{convert_to_int('5')}"

begin
    feed_me_a_fruit
rescue CoffeeError => e
    puts "You gave me coffee, but try again. #{e.message}" + "\n"
    retry
rescue NoFruitError => e
    puts "You can't try again because you didn't give me any fruits nor coffee. :(  #{e.message}" + "\n"
end

begin
    puts "Whats your name?"
    name = gets.chomp
    puts "How long have you known me?"
    years = convert_to_int(gets.chomp)
    puts "Whats your hobbies?"
    hobbies = gets.chomp
    sam = BestFriend.new(name, years, hobbies)
    sam.talk_about_friendship
    sam.do_friendstuff
    sam.give_friendship_bracelet
rescue WhatsYourNameError => e
    puts "What was your name? #{e.message}" + "\n"
    retry
rescue NoYouAintError => e
    puts "I don't know you like that. #{e.message}" + "\n"
    retry
rescue WhatsYourFavPastimeError => e
    puts "What do you like to do? #{e.message}" + "\n"
    retry
end
