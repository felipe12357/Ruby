dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}
 
# Get city names from the hash
def get_city_names(somehash)
# Write code here
end
 

def check_city_wrote(city,dial_book)
    attemps = 0

    loop do
        if dial_book.include?(city) == false
            puts attemps
            puts "Wrong city type again"
            city = gets.chomp.downcase
            attemps = attemps + 1
            puts "sumado #{attemps}"      
        end
        break if dial_book.include?(city)

        if attemps ==3
            city = "not found" 
            break
        end
    end
    return city
end
 
# Execution flow
loop do #esto es como un while
    puts "Do you want to look up an area code base on a city name? (Y/N)"
    answer = gets.chomp.downcase
    break if answer != "y"
    puts "Which city do you want the area code for?"
    
    dial_book.each  do |k, v| 
        puts k
    end

    puts "Enter your selection"
    answer = gets.chomp.downcase

    puts "test string A #{dial_book.include?(answer)}"
    puts "test string B #{dial_book.has_value?(dial_book[answer])} "


    answer = check_city_wrote(answer,dial_book)
 
    if answer == "not found"
        puts "none of the cities where found"
    else
        puts "The area code for #{answer} is #{dial_book[answer]}"
    end

end