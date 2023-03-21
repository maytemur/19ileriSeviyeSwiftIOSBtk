//
//  ProtocolSinifi.swift
//  19ileriSeviyeSwift
//
//  Created by maytemur on 2.02.2023.
//

//bunlar interface sınıflarına benzerler dedi
//yani anlaşılan interface - soyut swift class larına verilen isim


import Foundation

protocol ProtokolHayvani {
    
    //blueprint of a properties
    var KosulacakParkur : Int {get}
    var ProtoAdi: String {get}
    
    //blueprint of a metod
    func protokolKosusu()
}


//protocol interface olduğu için içinde bodie içermesine hata veriyor yani fonksiyonu tanimliyacağiz ama içini boş bırakacağız aynısını diğer Animal class'ında da class larla yapabiliyoruz zaten
//body kısmını şu hatayı veriyor : Protocol methods must not have bodies
//swift te inheritance denmiyorda adopt etmek deniyor açıklaması şu şekilde
//In Swift, a protocol defines a blueprint of methods or properties that can then be adopted by classes (or any other types).


