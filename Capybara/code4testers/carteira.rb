puts "Informe o nome: "
nome = gets.chomp

# "gets" pega a idade a partir do terminal
# "chomp" não pega a quebra de linha 
# "to_i" converte o valor para inteiro
puts "Informe sua idade: "
idade = gets.chomp.to_i

if (idade >= 18)
    puts "#{nome}, possui #{idade} anos de idades! Permitido habilitação!"
elsif (idade >= 12 )
    puts "#{nome}, possui #{idade} anos de idades! Não Permitido habilitação!"
else
    puts "#{nome}, possui #{idade} anos de idades! É uma criança!"
end 