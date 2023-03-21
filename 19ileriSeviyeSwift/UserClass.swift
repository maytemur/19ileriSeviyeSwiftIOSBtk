//
//  UserClass.swift
//  19ileriSeviyeSwift
//
//  Created by maytemur on 1.02.2023.
//

import Foundation

class UserClass {
    
    var isim : String
    var yas : Int
    var meslek : String
    
    init(isim:String,yas:Int,meslek:String) {
        self.isim=isim
        self.yas=yas
        self.meslek=meslek
    }
    
    func yasiBirArttir(){
        self.yas += 1
        
    }
}
