import Foundation

var intA = 1
var intB = 2
let maiorInt = maior(intA, intB)

var doubleA = Double.pi
var doubleB = 3.14
let maiorDouble =  maior(doubleA, doubleB)

var tratorA = AgriculturalMachinery(size: 12)
var tratorB = AgriculturalMachinery(size: 783)
let maiorTrator = maior(tratorA, tratorB)

var pilha = Pilha<Int>()

pilha.push(intA)
pilha.push(intB)

//TODO: Fazer um método que recebe um Array e um elemento, retorna um Bool dizendo se o elemento se encontra no Array
func encontra<T: Comparable>(_ array: [T],_ elemento: T) -> Bool {
    for i in array {
        if i == elemento {
            return true
        }
    }
    return false
}

//TODO: Extensão de Array contendo uma função que retorna a soma de todos os elementos, independente de qual o valor numérico
extension Array where Element: Numeric {
    func soma() -> Element {
        var soma = Element.zero

        for item in self {
            soma += item
        }

        return soma
    }
}

//TODO: Fazer um método que recebe 2 Arrays e retorna um Int referente a quantidade de elementos presentes em ambos os Arrays
func elementos<T: Comparable>(_ array1: [T],_ array2: [T]) -> Int {
    var ambos: Int = 0

    for item1 in array1 {
        for item2 in array2 {
            if item1 == item2 {
                ambos += 1
            }
        }
    }

    return ambos
}

//BONUS TODO: Fazer o método acima receber N arrays
func elementos<T: Comparable>(_ arrays: [[T]]) -> Int {
    var ambos: Int = 0

    // Roda
    for index1 in 0...arrays.count-1 {
        for item1 in arrays[index1] {
            for index2 in index1+1...arrays.count-1 {
                for item2 in arrays[index2] {
                    if item1 == item2 {
                        ambos += 1
                    }
                }
            }
        }
    }

    return ambos
}

