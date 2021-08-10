bandas = ["Voz da verdade", "Preto no branco", "Arca da aliança"]

puts bandas[1]

# Incrementa o array
bandas.push("Fernandinho", "Teste")
puts bandas

# deleta um elemento do array
puts ""
bandas.delete("Fernandinho")
puts bandas

# busca um elemento no array
teste = bandas.find {|item| item == "Teste"}
puts " "
puts teste

# busca um elemento através de uma parte do nome
teste = bandas.find {|item| item.include?("Preto")}
puts ""
puts teste