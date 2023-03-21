//
//  Closures.swift
//  19ileriSeviyeSwift
//
//  Created by maytemur on 3.02.2023.
//

import Foundation


//Closures : Kotlindeki Lambda gösteriminin swift deki karşılığıdır
//tek kullanımlık anonim fonksiyonlardır

func sum(num1 : Int, num2: Int) -> Int {
    return num1+num2
}



func multiply(num1: Int,num2:Int)-> Int{
    return num1*num2
}

func calculate (num1: Int,num2:Int, benimFonksiyon : (Int,Int) -> Int) -> Int {
    return benimFonksiyon(num1,num2)
    //burada benimFonksiyon closure fonksiyonu oluyor
}

//https://docs.swift.org/swift-book/LanguageGuide/Closures.html deki açıklama
//Closures are self-contained blocks of functionality that can be passed around and used in your code. Closures in Swift are similar to blocks in C and Objective-C and to lambdas in other programming languages.




