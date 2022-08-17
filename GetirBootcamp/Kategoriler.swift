//
//  Kategoriler.swift
//  GetirBootcamp
//
//  Created by Mac on 17.08.2022.
//

import Foundation


class Kategoriler {
    var kategoriId: Int?
    var kategoriAd: String?
    var kategoriResmi: String?
    
    init(kategoriId: Int, kategoriAd: String, kategoriResmi: String) {
        self.kategoriId = kategoriId
        self.kategoriAd = kategoriAd
        self.kategoriResmi = kategoriResmi
    }
}
