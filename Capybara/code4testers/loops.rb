# loop times
i = 1 
5.times do 
    puts "Executando times #{i}"
    i += 1  
 end

 # times com array
 vogais = ["a", "e", "i",  "o", "u"]

 i = 0 
 vogais.size.times do 
        puts "Vogal #{vogais[i]}"
        i += 1
 end 

 # for each
 puts ""
vogais.each do |vogal|
    puts "Vogal #{vogal}"
end