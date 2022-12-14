package com.jacaranda;

import java.util.Objects;

public class Calculadora {
	private double numberOne;
	private double numberTwo;
	
	public Calculadora(double numberOne, double numberTwo) {
		super();
		this.numberOne = numberOne;
		this.numberTwo = numberTwo;
	}

	public double getNumberOne() {
		return numberOne;
	}

	public void setNumberOne(double numberOne) {
		this.numberOne = numberOne;
	}

	public double getNumberTwo() {
		return numberTwo;
	}

	public void setNumberTwo(double numberTwo) {
		this.numberTwo = numberTwo;
	}
	
	public double sumar(double numberOne,double numberTwo) {
		return(numberOne+numberTwo);
	}
	
	public double resta(double numberOne,double numberTwo) {
		return(numberOne-numberTwo);
	}
	
	public double multiplicar(double numberOne,double numberTwo) {
		return(numberOne*numberTwo);
	}
	
	public double dividir(double numberOne,double numberTwo) throws divException {
		if(numberTwo==0) {
			throw new divException("No se puede dividir por 0");
		}
		
		return(numberOne/numberTwo);
	}

	@Override
	public int hashCode() {
		return Objects.hash(numberOne, numberTwo);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Calculadora other = (Calculadora) obj;
		return Double.doubleToLongBits(numberOne) == Double.doubleToLongBits(other.numberOne)
				&& Double.doubleToLongBits(numberTwo) == Double.doubleToLongBits(other.numberTwo);
	}

	@Override
	public String toString() {
		return "Calculadora [numberOne=" + numberOne + ", numberTwo=" + numberTwo + "]";
	}
	
	
	
	
}
