import Cocoa

//Задание 1. Написать функцию, которая определяет, чётное число или нет.
var num: Int

num = 11

func determineOdd(number: Int){
    if(number % 2 == 0){
        print("Число чётное")
    }
    else{
        print("Число нечётное")
    }
}

determineOdd(number: num)

//Задание 2. Написать функцию, которая определяет, делится ли число без остатка на 3.

func determineThree(number: Int){
    if(number % 3 == 0){
        print("Число делится на 3 без остатка")
    }
    else{
        print("Число не делится на три без остатка")
    }
}

determineThree(number: num)

//Задание 3. Создать возрастающий массив из 100 чисел.

var numbers = [Int]()
var i = 0

for i in 0...99 {
    numbers.append(i + 1)
}

//Задание 4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.
var j = 0

while j < numbers.count {
    if((numbers[j]) % 2 == 0){
        numbers.remove(at:j)
    }
    else{
        j += 1
    }
}

print(numbers)

j = 0

while j < numbers.count {
    if((numbers[j]) % 3 != 0){
        numbers.remove(at:j)
    }
    else{
        j += 1
    }
}
print(numbers)

/* Задание 6. * Заполнить массив из 100 элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу. Для нахождения всех простых чисел не больше заданного числа n, следуя методу Эратосфена, нужно выполнить следующие шаги:

a. Выписать подряд все целые числа от двух до n (2, 3, 4, ..., n).
b. Пусть переменная p изначально равна двум — первому простому числу.
c. Зачеркнуть в списке числа от 2p до n, считая шагами по p (это будут числа, кратные p: 2p, 3p, 4p, ...).
d. Найти первое не зачёркнутое число в списке, большее, чем p, и присвоить значению переменной p это число.
e. Повторять шаги c и d, пока возможно.*/

var primeNumbers = [Int]()
var Numbers = [Int]()

func isPrime(_ number: Int) -> Bool {
    return number > 1 && !(2..<number).contains {number % $0 == 0}
}

var l = 0

while primeNumbers.count <= 100 {
    if (isPrime(l + 2)){
        primeNumbers.append((l + 2))
    }
    l += 1
}

print(primeNumbers)

/*Задание 5. * Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов.
 
 Числа Фибоначчи определяются соотношениями Fn=Fn-1 + Fn-2.*/

var Fibonacci = [Int]()
 
Fibonacci.insert(1, at:0)
Fibonacci.insert(1, at:1)
 
print("Fibonacci[0] = ", Fibonacci[0], "\nFibonacci[1] = ", Fibonacci[1])
var k = 0
 
for k in 2...91 {
    Fibonacci.insert((Fibonacci[k-2] + Fibonacci[k-1]), at: k)
    print("Fibonacci[",k,"] = ", Fibonacci[k])
}

