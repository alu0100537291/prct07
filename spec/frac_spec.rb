require './lib/fracc.rb'

describe Fraccion do
	#Escribir aquí los test	
	before :each do
		@f1 = Fraccion.new(2, 4)
	end
	
	describe "Pruebas almacenamiento del numero en forma reducida" do
		it "Debe almacenar correctamente el numerador" do
			@f1.num.should eq (1)
		end
		
		it "Debe almacenar correctamente el denominador" do
			@f1.denom.should eq (2)
		end
	end
	
	describe "Pruebas obtencion informacion" do
		it "El metodo num devuelve el numerador" do
			@f1.num.should eq (1)
		end
		
		it "El metodo denom devuelve el denominador" do
			@f1.denom.should eq (2)
		end
	end
	
	describe "Pruebas mostrar por consola" do
		it "Muestra la fraccion de la forma a/b" do
			@f1.to_s.should eq ("1/2")
		end
		
		it "Muestra la fraccion en formato flotante" do
			@f1.to_f.should eq (0.5)
		end
	end
	
	describe "Pruebas metodos suma, resta, multiplicacion y division" do
		it "El operador + debe sumar dos fracciones y devolver una en forma reducida" do
			result = @f1.+(3, 4)
			result.to_s.should eq ("5/4")
		end
		
		it "El operador - debe restar dos fracciones y devolver una en forma reducida" do
			result = @f1.-(3, 4)
			result.to_s.should eq ("-1/4")
		end
		
		it "El operador * debe multiplicar dos fracciones y devolver una en forma reducida" do
			result = @f1.*(3, 4)
			result.to_s.should eq ("3/8")
		end
		
		it "El operador / debe relizar la division de dos fracciones y devolver una en forma reducida" do
			result = @f1./(3, 4)
			result.to_s.should eq ("2/3")
		end

		it "El operador % debe calcular el resto de dos fracciones" do
			result = @f1.%(3,4)
			result.to_s.should eq ("2")
		end
	end
	
	describe "Pruebas metodos abs, reciprocal, y - referido al opuesto" do
		it "El operador abs debe calcular el valor absoluto de una fraccion" do
			@f1.abs
			@f1.to_s.should eq ("1/2")
		end
		
		it "El operador reciprocal debe calcular el recripoco de una fraccion" do
			@f1.reciprocal
			@f1.to_s.should eq ("2/1")
		end
		
		it "El operador - debe calcular el opuesto de una fraccion" do
			-@f1
			@f1.to_s.should eq ("-1/2")
		end
	end
	
	describe "Pruebas metodos comparativos" do
		it "El operador == debe dar una igualdad entre fracciones" do
			result = Fraccion.new(5, 6)
			@f1.==(result).should be_false
		end
		
		it "El operador < debe comparar si una fraccion es menor que otra" do
			result = Fraccion.new(2, 3)
			@f1.<(result).should be_true
		end
		
		it "El operador > debe comparar si una fraccion es mayor que otra" do
			result = Fraccion.new(1, 4)
			@f1.>(result).should be_true
		end
		
		it "El operador <= debe comparar si una fraccion es menor o igual que otra" do
			result = Fraccion.new(1, 3)
			@f1.<=(result).should be_false
		end
		
		it "El operador >= debe comparar si una fraccion es mayor o igual que otra" do
			result = Fraccion.new(1, 3)
			@f1.>=(result).should be_true
		end
	end

	describe "Ejercicio opcional" do
		it "Calcula el valor absoluto de la multiplicacion de dos fracciones" do
			result = @f1.*(-3, 4).abs.to_s.should eq ("3/8")
		end
	end
end