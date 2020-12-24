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

/* 기본 데이터 타입 */

// Swift의 기본 데이터 타입
// Bool, Int, Uint, Float, Character, String

// Bool
var someBool: Bool = true
print(someBool)
someBool = false
print(someBool)
// someBool = 0 / Swift에서는 사용할 수 없음. Bool => Only true, false
// someBool = 1

// Int / 64비트 정수 양수와 음수, 0 포함
var someInt: Int = -100
print(someInt)
// someInt = 100.1 / 실수를 포함을 할 수 없음 Int => Only 정수, 음수

// UInt / 양의 정수 => +만 정수로 선언할 수 있음.
var someUInt: UInt = 100
print(someUInt)
// someUInt = -100
// someUInt = someInt

// Float / 부동소수형 32비트
var someFloat: Float = 3.14
print(someFloat)
someFloat = 3 // 정수를 넣어도 실수는 선언이 됨.
print(someFloat)

// Double
var someDouble: Double = 3.14
print(someDouble)
someDouble = 3
print(someDouble)
// someDouble = someFloat // Double => someFloat X

// Character
var someCharacter: Character = "🇰🇷"
someCharacter = "😆"
//someCharacter = "가"
//someCharacter = "A"
//someCharacter = "하하하" / 오류 발생 => Character는 하나의 문자만 받을 수 있음 => Character이 아닌 String
print(someCharacter)

// String
var someString: String = "하하하😆"
print(someString)
someString = someString + "웃으면 복이 와요"
print(someString)

//someString = someCharacter // 오류 발생

someString = """
여러줄 문자열을
사용할 수 있습니다.
첫 줄에 겹따옴표 세 개,
마지막 줄에 겹따옴표 세 개를
사용하면 됩니다.
"""
print(someString)

someString = """
겹따옴표 세 개인 줄(첫줄, 끝줄)에서
줄 바꿈을 하지 않으면 오류가 발생합니다.
"""

/*
someString = """오류발생
오류발생"""
*/
print(someString)

/* Any, AnyObject, nil*/
/*
 Any - Swift의 모든 타입을 지칭하는 키워드
 AnyObject - 모든 클래스 타입을 지칭하는 프로토콜
 nil - 없음을 의미하는 키워드
 */

// MARK: - Any
var someAny: Any = 100
print(someAny)
someAny = "어떤 타입도 수용가능합니다."
print(someAny)
someAny = 123.12
print(someAny)

// let someDouble: Double = someAny

// MARK: - AnyObject

class SomeClass {}

var someAnyObject: AnyObject = SomeClass()

//someAnyObject = 123.12

// MARK: - nil

// someAny = nil
// someAnyObject = nil

/* 컬렉션 타입 */
/* Array, Dictionary, Set*/

/*
Array - 순서 있는 리스트 컬렉션
 Dictionary - 키와 값의 쌍으로 이루어진 컬렉션
 Set - 순서가 없고, 멤버가 유일한 컬렉션
 */


