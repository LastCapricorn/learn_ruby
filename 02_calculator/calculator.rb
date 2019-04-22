#write your code here
def add(op1, op2)
  op1 + op2
end

def subtract(op1, op2)
  op1 - op2
end

def sum(op_arr)
  result = 0
  op_arr.each { |op| result += op }
  result
end

def multiply(op_arr)
  op_arr.reduce { |p, c| p * c }
end

def power(base, pow)
  base ** pow
end

def factorial(num)
	num > 1 ? num * factorial(num - 1) : 1
end
