# Nome, marca, modelo, cor, quantidade de portas, etc...
# Ligar, businar, parar, etc....

# Uma classe é um objeto que tem características e funções

class Veiculo
    attr_accessor :nome, :cor, :marca

    def initialize(nome, marca)
        @nome = nome
        @marca = marca
    end 

    def define_cor(cor)
        @cor = cor
    end 
end

class Carro < Veiculo
    def ligar
        puts "O #{@nome} está pronto para iniciar o trajeto."
    end 

    def dirigir
        puts "O #{@nome} está inciciando o trajeto"
    end 
end 

class Moto < Veiculo
    def ligar
        puts "A #{@nome} está pronto para iniciar o trajeto."
    end 

    def pilotar
        puts "A #{@nome} está inciciando o trajeto"
    end 
end 

chevette = Carro.new("chevette", "GM")
chevette.ligar
chevette.dirigir
chevette.define_cor("Bege")

fusca = Carro.new("Fusca", "VW") 
fusca.ligar
fusca.dirigir
fusca.define_cor("Branco")

cg = Moto.new("CG", "Honda")
cg.ligar
cg.pilotar
cg.define_cor("Azul")