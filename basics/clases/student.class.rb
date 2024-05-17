require_relative '../modules/authentication.module.rb'

class Student

    #EJEMPLO DE INCLUIR UN MODULO
    include AutheticationModule
    #esta es una forma facil de declarar setters y getters
    #en este caso asigno firstname y lastname
    attr_accessor :first_name, :last_name

    #de esta forma declaro las propiedades quiero el getter
    attr_reader :mail
    # y de esta las q quiero solo el setter
    attr_writer :username

    #los atributos son con @
    @first_name
    @last_name
    @phone
    @mail
    @username

    #ejemplo del constructor
    def initialize(first_name,last_name,phone,username,email)
        @first_name = first_name
        @last_name = last_name
        @phone = phone
        @username =username
        @mail = email
    end 

    # forma de declarar un setter individual IMPORTANTE: el igual tiene q estar pegado
    def set_phone=(phone)
        @phone = phone
    end

    def set_mail=(mail)
        @mail = mail
    end

    def get_phone
        @phone
    end

    def get_username
        @username
    end

    #este metodo se ejecuta cuando queremos imprimir el objeto
    def to_s
        "First name: #{@first_name}, 
        Last name: #{@last_name},
        phone: #{@phone}, 
        email: #{@mail},
        username: #{@username}"
    end
end