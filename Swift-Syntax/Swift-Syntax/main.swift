/* 콘솔로그와 문자열 보간법 */

import Swift

let age: Int = 10

"안녕하세요! 저는 \(age)살입니다."
// == "안녕하세요! 저는 10살입니다"
// JavaScript ${age} => Swift /()

"안녕하세요! 저는 \(age + 5)살입니다."
// == "안녕하세요! 저는 15살입니다"

print("안녕하세요! 저는 \(age)살입니다.")
print("안녕하세요! 저는 \(age + 5)살입니다.")

print("\n####################\n")

class Person {
    var name: String = "HyunSang"
    var age: Int = 10
}

let HyunSang: Person = Person()

print(HyunSang)

// =================================================

/* 변수와 상수 */

// 상수, 변수의 선언
// 상수 선언 키워드 let
// 변수 선언 키워드 var

// 상수의 선언
// let 이름:타입 = 값

// 값의 타입이 명확하다면 타입은 생략 가능
// let 이름 = 값
// var 이름 = 값

let constant: String = "차후에 변경이 불가능한 상수 let"
var variable: String = "차후에 변경이 가능한 변수 var"

variable = "변수는 이렇게 차후에 다른 값을 할당수 있지만"
// constant = "상수는 차후에 값을 변경할 수 없습니다" // 오류발생 !!

// 나중에 할당하려고 하는 상수나 변수는 타입을 꼭 명시해주어야 합니다.
let sum: Int
let inputA: Int = 100
let inputB: Int = 200

// 선언 후 첫 할당
sum = inputA + inputB
print(sum)
// sum = 1 // 그 이후에는 다시 값을 바꿀 수 없습니다, 오류발생


// 변수도 물론 차후에 할당하는 것이 가능합니다
var nickName: String

nickName = "HyunSang"
print(nickName)

// 변수는 차후에 다시 다른 값을 할당해도 문제가 없지요
nickName = "현상"
print(nickName)
