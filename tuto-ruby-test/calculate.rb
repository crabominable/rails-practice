# DESCRIÇÃO DO DESAFIO:
#
# A função `calculate(expression)` definida abaixo deverá ser utilizada para
# calcular o resultado da expressão passada como parâmetro.
#
# Exemplo:
#
# calculate('1+1+3')
#   => 5
#
# INSTRUÇÕES:
# 1. As expressões passadas como parâmetro apresentarão somente operações de adição e subtração
# 2. TODA expressão terá o formato de um digito seguido de um operador seguido de um dígito seguido de um operador... indefinidamente;
#
# ----------
#
# Exemplos de expressões que NÃO seguem as regras acima:
# 1 + 1 (contém espaços)
# 12+3 (primeiro número (12) é composto por dois dígitos)
#
# ----------
#
# Exemplos de expressões que SEGUEM as regras acima:
#
# '1+1+3'
# '2-1+3'
# '2+1+3-1'
# '1-1'

def calculate(expression)
  conversion = expression.split("")
  result = conversion[0].to_i
  conversion.each_with_index do |item, index|
    if item == '+'
      result += conversion[index + 1].to_i
    elsif item == '-'
      result -= conversion[index + 1].to_i
    elsif item == '*'
      result = result * conversion[index + 1].to_i
    elsif item == '/'
      result = result / conversion[index + 1].to_i
    end
  end
  puts result
  return result
end

# 1º fase
# puts calculate('1+3/2') == 2
# puts calculate('1+1+3') == 5
# puts calculate('2+1+3') == 6
# puts calculate('2+1+3-1') == 5
# puts calculate('1-1') == 0

puts calculate('2+1*3') == 5
puts calculate('2-1*3') == -1
puts calculate('3*5-8/2') == 11
puts calculate('1+3*2-4') == 3
puts calculate('1+6-6/3') == 5