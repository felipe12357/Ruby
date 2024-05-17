require_relative 'modules/authentication.module.rb'

hashedPassword = AutheticationModule.create_hash_pass("hola mundo");
puts "hashed password: #{hashedPassword}"

result1 = AutheticationModule.verify_pass("hola mundo", hashedPassword);
result2 = AutheticationModule.verify_pass("wrong pass", hashedPassword);
puts "results: #{result1} - #{result2}"
