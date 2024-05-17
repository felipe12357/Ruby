require 'bcrypt'

module AutheticationModule
    puts "Authentication module loaded"


    #si se van a llamar desde una clase no es necesario agregar el "self"
    def create_hash_passForClass(password)
        #debido a q es un metodo q tiene la palabra self fue necesario invocarlo asi:
       result = AutheticationModule.create_hash_pass(password)
       #de ser un method sin la palabra self se puede invocar con solo su nombre: ejemplo()
    end

    def verify_passForClass(passwordSent,encriptedPass)
       resutl= AutheticationModule.verify_pass(passwordSent,encriptedPass)
    end

    #es necesario agregar "self" para q puedan ser invocados desde afuera
    def self.create_hash_pass(password)
        BCrypt::Password.create(password)
    end

    def self.verify_pass(passwordSent,encriptedPass)
        #importante para q esto funcione, se tiene q almacenar en una variable para luego validar contra la otra
        passwordLoaded = BCrypt::Password.new(encriptedPass)
        passwordLoaded == passwordSent
    end

end