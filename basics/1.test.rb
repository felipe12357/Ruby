full_name = "John Doe"
numero1 = 10.to_f  # f es para que sea float
result = 10.eql?(10.to_f) # esto compara el valor y el tipo
puts result

def greeting(name)
    puts "Hello " + name
end

def greetingReverse(nameR)
    name = nameR.upcase
    puts "Hello #{name.reverse} Numero de caracteres: #{name.length}"
end

def printMultipleTimes(numbers)
    ## genera un  numero aleatorio entre 0 y 9, las veces q le indique la variable numbers
    numbers.times do
        random_number = rand(10)
        if random_number.even?
            puts "#{random_number} is even"
        else
            puts "#{random_number} is odd"
        end
    end
end

def multipleIf(name)
    if name == "Andres"
        puts "Hello Andres"
    elsif name == "John"
        puts "Hello John"
    elsif name == "Felipe"
        puts "Hello Felipe"
    else
        puts "hello"
    end
end

def arrays()
    a = [ 1, 2, 3, 4, 5 ]
    p a.last #imprimo el ultimo valor

    a << "m" #agrega un valor al final del array
    p a

    a.append("n") #agrega un valor al final del array

    a.unshift("h") #agrega un valor al inicio del array
    p a

    puts a.first #imprime el primer valor

    puts a.include?("m") #verifica si el valor esta en el array

    p a.pop #elimina el ultimo valor del array

    p a.push("hola") #agrega un valor al final del array

    p a 

    a.each do |element|
        if(element.is_a?(String))
            puts "Element #{element} is a string"
        else
            puts "Element #{element} is a number"
        end
    end

    filtered_array_letters = a.select { |element| element.is_a?(String) }

    puts "Filtered array: #{filtered_array_letters}"

    correo = "andres@a.com"
    puts correo.split("@")[0]
end

def hash()
    hash = { "name" => "Andres", "email" => "andres@a.com" }
    p hash["name"]

    hash["phone"] = "1234567890"

    p hash
    p hash.keys
    p hash.values

    hash.each do |key, value|
        puts "Key: #{key} Value: #{value}"
    end

    #tambien se peuden definir con simbolos
    hashSimbol = { name: "Felipe", email: "felipe@t.com" }
    hashSimbol[:phone] = "1234567890"
    p hashSimbol
    p hashSimbol[:name]
    hashSimbol[:phone] = 987654321

    hashSimbol.each do |key, value|
        puts "Key: #{key} Value: #{value}"
    end

    filtersHash = hashSimbol.select { |key, value| value.is_a?(Integer) }
    puts filtersHash
    
    hashSimbol.delete(:phone) #elimina una propiedad del hash
    puts hashSimbol
end

# irb en consola me permite entrar a la consola de ruby
# command  + shift + d = para comentar
#greetingReverse("John")
#multipleIf("Andres")
#printMultipleTimes(5)
#arrays()
#hash()