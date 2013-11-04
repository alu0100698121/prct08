class Matriz
	attr_accessor :N, :M #Getters & Setters
	
	def initialize(n,m=nil) #Inicializa el valor de las filas (n) y columnas (m).
		@N, @M = n, m
	end
end