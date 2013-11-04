class Matriz
	attr_accessor :N, :M #Getters & Setters
	
	def initialize(n,m) #Inicializa el valor de las filas (n) y columnas (m).
		@N, @M = n, m
		@contenido = nil
	end
end