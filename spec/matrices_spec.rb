require './lib/matrices.rb'

describe Matriz do
	before :each do
		@m1 = Matriz.new(2,2)
		@m1[0] = [1,2]
		@m1[1] = [3,4]
		
	end
	describe " # Almacenamiento de matrices. " do
		it " # Se debe almacenar el numero de filas " do
			@m1.N
		end
		it " # Se debe almacenar el numero de columnas " do
			@m1.M
		end
		it " # Se debe poder almacenar datos en forma vectorial en la matriz " do
			@m1[0] = [1,2]
		end
		it " # Se debe poder acceder a los datos almacenados en la matriz " do		
			@m1[1] = [3,4]
			@m1[1][0].should eq(3)
		end
	end
	
	describe " # Operadores unarios. " do
      it " # Se debe poder transformar la matriz a una cadena de caracteres" do
        @m1.to_s.should == "1\t2\t\n3\t4\t\n"
      end
	  
	  it " # Se debe poder negar una matriz con el operador -" do
        (-@m1).to_s.should == "-1\t-2\t\n-3\t-4\t\n"
      end
    end
	
end
