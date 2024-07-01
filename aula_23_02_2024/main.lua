-- Definição de variáveis 
local graus_f
local graus_c 


-- Entrada: solicitar dados ao usuário
io.write("Digite o valor da temperatura em Celsius: ")
graus_c = io.read()


-- Processamento
graus_f = 1.8 * graus_c + 32


-- Saída: retorno para o usuário
io.write("\n\n A temperatura em Fahrenheit", graus_f, "\n")