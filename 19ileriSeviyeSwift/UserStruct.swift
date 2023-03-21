//
//  UserStruct.swift
//  19ileriSeviyeSwift
//
//  Created by maytemur on 1.02.2023.
//

import Foundation

struct UserStruct {
    
    var isimS : String
    var yasS : Int
    var meslekS : String
    //burada initialize etmesekde struct hata vermiyor!! demekki kendi bir yerlerde otomatik init ediyor!
    
    
    //burda bunu ancak değiştirilebilir fonksiyon(mutating func) olarak belirterek değiştirebiliyoruz normaline hata veriyor
    mutating func yasiBirArttir(){
        self.yasS += 1
        
    }
}



