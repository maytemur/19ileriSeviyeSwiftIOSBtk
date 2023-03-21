//  main.swift
//  19ileriSeviyeSwift
//
//  Created by maytemur on 31.01.2023.
import Foundation

print("Hello, World!")

//Struct yapısını öğreneceğiz
//Class yapısı
//struct lar hemen hemen class larla aynı yapılardır. Teknik olarak çok farklılar.
//Struct içinde inheritance yok! apple dökümantasyonunda mecbur olmadıkça inheritance lazım değilse struct kullanılmasını tavsiye ediyor. Structlar çok daha hızlı çalışıyor.
//Class lar heap içinde(RAM) çalışırken Struct lar ise stack içinde çalışıyor.

//struct ---stack (ram) ,filo (first in last out) daha hızlı daha basit ---value type tir  ---immutable yani değiştirilemez
//class ---heap(ram) ,fifo (first in first out) ---reference type tir ---mutable dır yani değiştirilebilir

let mustafa = UserClass(isim: "Mustafa", yas: 56, meslek: "Mühendis")


print(mustafa.meslek)

//let mustafaS = UserStruct(isimS: "StructMustafa", yasS: 23, meslekS: "Coder")
var mustafaS = UserStruct(isimS: "StructMustafa", yasS: 23, meslekS: "Coder")

print(mustafaS.meslekS)

mustafaS.yasS = 45 // buna hata verir çünkü let ile tanımlamışız bunu değiştirebilmek için var dememiz lazım o zaman hata vermez

//Referans ve Value farkı

let mustafaSinifKopyasi = mustafa
var mustafaStructKopyasi = mustafaS

mustafaSinifKopyasi.yas = 68
mustafaStructKopyasi.yasS = 79

print(mustafaSinifKopyasi.yas)
print(mustafaStructKopyasi.yasS)

//buraya kadar bir farklılık bir sürpriz yok!
//ama burdan sonra kopyalanan değerleri yani class ve struct değerlerini tekrar yazdırırsak

//sürpriz!!!! kopyayı değiştirince kopyalanan class değişmiş ama struct değişmemiş
//cluss -- tek obje 2 referans var bu yüzden referansın biri değişince diğeride değişiyor
//struct-- kopyalama yapıldığında value type olduğundan 2 tane obje oluyor bu akla daha yakın aslında!!!


print(mustafa.yas)
print(mustafaS.yasS)

mustafa.yasiBirArttir()
print(mustafa.yas)

mustafaS.yasiBirArttir()
print(mustafaS.yasS)


//python'da olduğu tuple listeler swift'tede var
//normalde firebase vs ile çalıştığımızda normal dizi döner ama dönmeyen bir koleksiyonda olabilir bu sebeple tuple'da anlatıyormuş!
//gösterimi köşeli parantez değil normal parantez şeklinde

var benimTuple = ("Mustafa",12)
print(benimTuple.0) //mustafa verecektir

//var yada let ile tanımlayabiliriz

let benimTuple2 = ("Mustafa2",23,[2,3,5],"Sevim") //burada 3 değerini alabilmek için

print(benimTuple2.2.self[1])   //benimTuple2.2[1] şeklindede aynısını verir


//tuple ile istenirse key-value yapıyada geçirebiliriz veya önceden tanımlayyıp string, int vs diyerek içeriğini sonradanda doldurabiliriz

let tuple1: (String,Int) //içeriği sonra doldurulacaksa
let tupleKeyValue = (ad: "Mustafa", soyad: "Aytemur") //key-value
print(tupleKeyValue)

//Guard Let

//aynı if let benzeri bir yapı nasıl if let yapısında yapabiliyorsan yap diyorsak bunda da olmayanı yazıyoruz gibi bir durum var dedi :)
//opsiyonel olmazsa da olur hayatınıza devam edebilirsiniz if let veya guard let olmadan da dedi !
//örnek verelim if let ile yaptığımızın aynısını guard let ile yapalım

let numaraStringi = "5"

func inteCevirenIfLetFonk (string: String) -> Int{
    if let  benimIntegerim = Int (string) {
        return benimIntegerim
    } else {
        return 0
    }
}

print(inteCevirenIfLetFonk(string: numaraStringi))

func inteCevirenGuardLetFonk (string: String) -> Int{
    guard let  benimIntegerim = Int (string) else {
        return 0
    }
    return benimIntegerim
}

print(inteCevirenGuardLetFonk(string: numaraStringi))

//farklılıklar - guard let den sonra kesinlikle else kullanmanı istiyor ve negatif olarak yaklaşıyor ,yapamazsan diye koşulla gidiyoruz dedi
//aşağıdaki örnek açıklama ise https://www.hackingwithswift.com/quick-start/understanding-swift/when-to-use-guard-let-rather-than-if-let sitesinden

/*
 Swift gives us an alternative to if let called guard let, which also unwraps optionals if they contain a value, but works slightly differently: guard let is designed to exit the current function, loop, or condition if the check fails, so any values you unwrap using it will stay around after the check.
 
 To demonstrate the difference, here’s a function that returns the meaning of life as an optional integer:
 
 func getMeaningOfLife() -> Int? {
 42
 }
 And here’s that function being used inside another function, called printMeaningOfLife():
 
 func printMeaningOfLife() {
 if let name = getMeaningOfLife() {
 print(name)
 }
 }
 That uses if let, so that the result of getMeaningOfLife() will only be printed if it returned an integer rather than nil.
 
 If we had written that using guard let, it would look like this:
 
 func printMeaningOfLife() {
 guard let name = getMeaningOfLife() else {
 return
 }
 
 print(name)
 }
 Yes, that’s a little longer, but two important things have changed:
 
 It lets us focus on the “happy path” – the behavior of our function when everything has gone to plan, which is to print the meaning of life.
 guard requires that we exit the current scope when it’s used, which in this case means we must return from the function if it fails. This is not optional: Swift won’t compile our code without the return.
 It’s common to see guard used one or more times at the start of methods, because it’s used to verify some conditions are correct up front. This makes our code easier to read than if we tried to check a condition then run some code, then check another condition and run some different code.
 
 So, use if let if you just want to unwrap some optionals, but prefer guard let if you’re specifically checking that conditions are correct before continuing.
 */

//Switch - Case -- bu genelede ileri seviye içinde gösterilmez genelde başta gösteriliyorda biz burda fazla kullanmadığımız için eksik de kalmasın diye yer verdik falan dedi :)

let gunSayisi = 3
var gunStringi = ""

switch  gunSayisi {
case 1:
    gunStringi = "Pazartesi"
case 2:
    gunStringi = "Sali"
case 3:
    gunStringi = "Çarşamba"
default:
    gunStringi = "Pazar"
}

print(gunStringi)


//Protocol - Interface

let findik = Dog()

findik.kosmak()


let kedicik = Cat()

kedicik.kosmak()

let leonardo = Turtle()
leonardo.kosmak()

class Doberman: ProtokolHayvani {
    
    //implementation of properties
    
    var KosulacakParkur: Int = 4
    
    var ProtoAdi: String = "kopek heryerde kopektir"
    
    func protokolKosusu() {
        print("hayvanin kosusu bitmez")
    }
}

let itDober = Doberman()
itDober.protokolKosusu()


//Closures : Kotlindeki Lambda gösteriminin swift deki karşılığıdır


print(sum(num1: 4,num2: 67))
print(multiply(num1: 34, num2: 6))

//aşağıdaki bir closure fonksiyon örneği,ama bunu bu şekilde böyle bir defa kullanmadan yazmanın hiç bir anlamı yok bunu bir başka fonksiyon içinde bir şekilde kullanmamız gerek

print( calculate(num1: 23, num2: 3, benimFonksiyon: sum))


//bir başka kullanım şekli
calculate(num1: 23, num2: 3, benimFonksiyon: { (num1,num2) -> Int in
    
    return num1-num2
    
})

//bir diğer kullanım şekli - num1 ve num2 nin Int olduğunu zaten biliyor onları atabiliriz
calculate(num1: 23, num2: 3, benimFonksiyon: { (num1,num2) in
    return num1*num2
})

//bir diğer sadeleştirme yaparsak buna Shorthand Argument Names deniyor oda $0 birinci $1 ikinci değişkeni ifade ediyor
calculate(num1: 23, num2: 3, benimFonksiyon: {$0*$1})

//burada kotlin de olmayan kısaltmalar var sanırım bu kadar kısaltma sadeleştirme vs ki bence gereksiz sanırım kotlinde yok!

//bir diğer kullanım şekli ise dizileri for loopa almak yerine veya terse çevirme şeklinde kullanım

//dizi for-loop yerine
let benimDizim = [23,2,1,3,5]

func test (num1:Int) ->Int{
    return num1 / 2
}

print(benimDizim.map(test))

//diziyi tersine çevirme

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
var reversedNames = names.sorted(by: backward)
// reversedNames is equal to ["Ewa", "Daniella", "Chris", "Barry", "Alex"]

//yeni diziyi yazdırırsak

print(reversedNames)

//yeni diziyi alfabetik sort edelim
func forward(_ s1: String, _ s2: String) -> Bool {
    return s2 > s1
}
var forwardNames = names.sorted(by: forward)
print(forwardNames)

