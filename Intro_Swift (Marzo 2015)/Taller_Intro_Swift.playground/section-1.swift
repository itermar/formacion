// Playground - Taller Introducción a Swift
// Parque Tecnológico de Zamudio (25/03/2015)

import UIKit
import Foundation

/**********************
Tipos de datos básicos 
**********************/

/* Variables*/

// Declaración explícita
var nombreCurso: String = "Introducción a Swift";

//Inferencia de datos
var nombreCurso1 = "Introducción a Swift"
nombreCurso = "Swift Avanzado"
print(nombreCurso);

// Constantes
let nombreLenguaje = "Swift"
print(nombreLenguaje)
print(nombreLenguaje)

// Declarar variable
var cadena: String
var entero: Int
var double: Double
var float: Float
var booleano: Bool


// Math
var numero1 = 18
var numero2 = 3
var resultado = numero1+numero2
print(resultado)


/*********
OPTIONALS 
**********/

var miOptional1: Int?
print(miOptional1)

var miOptional: Int? = 10
print(miOptional)


// Sacar valor optional.

// Opción 1 --> Más recomendabñe
let optional1: Int? = 10
if let value = optional1 {
    print(value)
}
// Opción 2 --> Opción clásica
if optional1 != nil {
    print(optional1)
}

// Optional con valor no encapsulado

let opt1: Int! = 10
print(opt1)

let opt2: Int? = 10
if let value = opt2 {
    print(value)
}


/***********
COLECCIONES 
***********/

/* Arrays */

var array: [String] = ["valor1"]

// Añadir valores
array.append("valor2")
array.append("valor3")

array += ["valor4"]
array = array + ["valor5"]

array.insert("valorIntermedio", atIndex: 3)

// Contar los elementos del array
array.count

// Imprimir array completo
print(array)

// Imprimir elemento concreto del array
print(array[2])


let array1 = [1.2,2.5]

print(array1)

// Acceder elemento array
array1[1]

// Eliminar elementos
print(array)
array.removeAtIndex(2)
print(array)

// Modificar valor
print(array[2])

array[2]
print(array[2])

// Comprobar si es vacío

if array.isEmpty{
    print("Array vacío");
}
else {
    print ("Contiene objetos");

}


/* Diccionarios */

// Creación
var diccionario: [Int: String]

diccionario = [1:"valor1", 2:"valor2"]

// Añadir elementos
// El 3 sería la clave, no la posición, no confundir con los arrays
diccionario[3] = "valor3"

// Contar número de elementos
print(diccionario.count)

// Acceder a un elemento, mediante la clave

if let value = diccionario[2] {
    print(value)
}

// Comprobar si es vacío

let empty = diccionario.isEmpty

if empty {
    print("Diccionario vacio")
}
else {
    print("Contiene elementos")
}


// Eliminar elementos diccionario

print(diccionario)

diccionario.removeValueForKey(3)
print(diccionario)

// Modificar
diccionario[2] = "valor25"
print(diccionario[2])


/*********************
Estructuras de control 
*********************/

// If

let cinco = 5
let miBooleano = cinco == 5

if miBooleano {
    print("Si, es igual")
}


// If else 

let miBooleano2 = 5 > 6

if miBooleano2 {
    print("verdadero")
}
else {
    print("falso")
}


// Comprobar sin variable

let x = 5
if x==5 {
    print("x es igual a 5")
}


// Comprobar si dos valores son diferentes

let y = 6
if y != 7 {
    print("Son diferentes")
}

// Comprobar dos Strings con ==
let a = "Naranja"
let b = "Manzana"

let iguales = a == b

print(iguales)


// Comprobar si un Optional es nil o no

var optional3 : String?
optional3 = "Valor optional"

if optional3 != nil {
    let value = optional3!
    print(value)
}


// for..in

// Intervalo cerrado

for i in 1 ... 4 {
    print (i)
}

// Intervalo abierto

for j in 1..<4 {
    print (j)
}

// Colocar valores en salida para utilizarlos dentro de un String

var miVariable = 0
print (miVariable)

for i in 1 ... 3{
    miVariable += i
    print("+\(i)")
}

print("=\(miVariable)")

// Ejemplo series de Fibonacci

var primero = 1
var segundo = 1
print("\(primero)\(segundo)")

for i in 1 ... 3 {
    var siguiente = primero+segundo
    print(siguiente)
    primero = segundo
    segundo = siguiente
}

print("\(primero)\(segundo)")

// Recorrer arrays con for

let array5 = [1.1, 1.3, 5.6]
for elemento in array5 {
    print("-\(elemento)")
}

// While 

var contador = 0

while contador == 4 {
    print(contador)
    contador++
}


// Do-while 

do {
    print(contador)
    contador++
} while(contador<4)

// Switch

let contador1: Int = 3
switch contador1{
case 1:
    print("1")
    break
case 2:
    print("2")
    break
case 3:
    print("3")
    break
default:
    print("Imprimir")
}


/******
Clases
******/


// Clase con valores iniciales

class Coche {
    var marca = "Renault"
    var combustible = "Diesel"
    var cilindrada = 1.9
}

var miCoche = Coche()
print(miCoche.marca)
miCoche.marca = "Ford"

print(miCoche.marca)

// Inicialización

class Coche1 {
    var marca = "Renault"
    var combustible = "Diesel"
    var cilindrada = 1.9
    
    init(marca:String, combustible:String, cilindrada:Double) {
        self.marca = marca;
        self.combustible = combustible;
        self.cilindrada = cilindrada;
    }
     
}

var miCoche1 = Coche1(marca:"Audi",combustible:"Gasolina", cilindrada:2.0)


// Funciones dentro de una clase

class Coche3 {
    var motorEnMarcha = false
   
    func arrancar(){
        print("Arrancando")
        motorEnMarcha = true
    }
}

var otroCoche = Coche3()
otroCoche.arrancar()


// Todas las instancias deben ser inicializadas, menos los OPTIONALS

class Coche4{
    var color : String
    var conductor: String?
    
    init(color:String){
        self.color = color
    }
}

var miCocheNuevo = Coche4(color: "negro")
print(miCocheNuevo.color)

print(miCocheNuevo.conductor)


/* Herencia */

// Superclase
class Coche5 {
    var color = "azul";
}

// Subclase
class CocheCarreras: Coche5 {
    var turbo: Bool?
}

// Acceso a variables de la clase padre
var miCocheCarreras = CocheCarreras()
print(miCocheCarreras.color)


/*********
Funciones 
*********/

// print()
let cadena5 = "Soy una cadena"
print(cadena5)

// Palabra reservada func, sin parámetros

func miFuncion() {
    print("Mi primera función en Swift")
}

miFuncion()

// Funciones con parámetros

func miFuncion2(nombre:String){
    print("Hola \(nombre)")
}

miFuncion2("Swift")

// Funciones con varios parámetros

func miFuncion3 (a: String, b: String) {
    let s = "Hola \(a) y \(b)"
    print(s)
}

let nombre1 = "Swift"
let nombre2 = "Objective C"

miFuncion3(nombre1, nombre2)


// Indicamos tipo de dato a devolver

func doble(numero:Int)->Int {
    let resultado = numero*2
    return resultado
}

let numeroDoble = doble(4)
print(numeroDoble)


// Devolver una tupla --> Varios valores

func funcion() -> (Int,Int){
    return(1,2)
}

let(g, k) = funcion()


// Pasar como parámetro un array

func funcion25(numeros:[Int]){
    print(numeros)
}

let array67 = [1,2,3]
funcion25(array67)


// Funciones anidadas (funciones dentro de funciones)

func moverse(pasos: Int) {
    var movido = 0
    
    func darPasos(pasos: Int){
        movido += pasos
    }
    
    darPasos(pasos)
    print("Te has movido \(movido) pasos")
}

moverse(5)


























