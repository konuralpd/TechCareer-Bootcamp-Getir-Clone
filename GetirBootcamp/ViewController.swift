//
//  ViewController.swift
//  GetirBootcamp
//
//  Created by Mac on 17.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var kategoriCollectionView: UICollectionView!
    
    @IBOutlet weak var varisView: UIView!
    @IBOutlet weak var adressView: UIView!
    var kategoriListesi = [Kategoriler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     
        
        
        let k1 = Kategoriler(kategoriId: 1, kategoriAd: "Su & İçecek", kategoriResmi: "icecek")
        let k2 = Kategoriler(kategoriId: 2, kategoriAd: "Meyve&Sebze", kategoriResmi: "meyve")
        let k3 = Kategoriler(kategoriId: 3, kategoriAd: "Fırından", kategoriResmi: "firindan")
        let k4 = Kategoriler(kategoriId: 4, kategoriAd: "Temel Gıda", kategoriResmi: "temelgida")
        let k5 = Kategoriler(kategoriId: 5, kategoriAd: "Atıştırmalık", kategoriResmi: "atistirmalik")
        let k6 = Kategoriler(kategoriId: 6, kategoriAd: "Dondurma", kategoriResmi: "dondurma")
        let k7 = Kategoriler(kategoriId: 7, kategoriAd: "Süt Ürünleri", kategoriResmi: "sut")
        let k8 = Kategoriler(kategoriId: 8, kategoriAd: "Kahvaltılık", kategoriResmi: "kahvaltilik")
        let k9 = Kategoriler(kategoriId: 9, kategoriAd: "Yiyecek", kategoriResmi: "yiyecek")
        let k10 = Kategoriler(kategoriId: 10, kategoriAd: "Fit & Form", kategoriResmi: "fitform")
        let k11 = Kategoriler(kategoriId: 11, kategoriAd: "Kişisel Bakım", kategoriResmi: "kisiselbakim")
        let k12 = Kategoriler(kategoriId: 12, kategoriAd: "Ev Bakım", kategoriResmi: "evbakim")
        let k13 = Kategoriler(kategoriId: 13, kategoriAd: "Ev & Yaşam", kategoriResmi: "evyasam")
        let k14 = Kategoriler(kategoriId: 14, kategoriAd: "Teknoloji", kategoriResmi: "teknoloji")
        let k15 = Kategoriler(kategoriId: 15, kategoriAd: "Evcil Hayvan", kategoriResmi: "evcilhayvan")
        let k16 = Kategoriler(kategoriId: 16, kategoriAd: "Bebek", kategoriResmi: "bebek")
        let k17 = Kategoriler(kategoriId: 17, kategoriAd: "Cinsel Sağlık", kategoriResmi: "cinselsaglik")
        let k18 = Kategoriler(kategoriId: 18, kategoriAd: "Yeni Ürünler", kategoriResmi: "yeni")
        let k19 = Kategoriler(kategoriId: 19, kategoriAd: "İndirimdekiler", kategoriResmi: "indirim")
        
        kategoriListesi.append(k19)
        kategoriListesi.append(k18)
        kategoriListesi.append(k1)
        kategoriListesi.append(k2)
        kategoriListesi.append(k3)
        kategoriListesi.append(k4)
        kategoriListesi.append(k5)
        kategoriListesi.append(k6)
        kategoriListesi.append(k7)
        kategoriListesi.append(k8)
        kategoriListesi.append(k9)
        kategoriListesi.append(k10)
        kategoriListesi.append(k11)
        kategoriListesi.append(k12)
        kategoriListesi.append(k13)
        kategoriListesi.append(k14)
        kategoriListesi.append(k15)
        kategoriListesi.append(k16)
        kategoriListesi.append(k17)
        
        
        kategoriCollectionView.delegate = self
        kategoriCollectionView.dataSource = self
        
        let tasarim = UICollectionViewFlowLayout()
        
        tasarim.sectionInset = UIEdgeInsets(top: 10, left: 8, bottom: 5, right: 8)
        tasarim.minimumInteritemSpacing = 7
        tasarim.minimumLineSpacing = 7
        
        let genislik = kategoriCollectionView.frame.size.width
        
        let yatayUzunluk = (genislik - 10) / 5
        
        tasarim.itemSize = CGSize(width: yatayUzunluk+8, height: yatayUzunluk*1.6)
        
        kategoriCollectionView.collectionViewLayout = tasarim
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
         .lightContent
     }


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return kategoriListesi.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let kategori = kategoriListesi[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "kategoriHucre", for: indexPath) as! KategoriCellCollectionViewCell
        cell.kategoriImageView.image = UIImage(named: kategori.kategoriResmi!)
        cell.kategoriIsmiLabel.text = kategori.kategoriAd!
        
        return cell
    }
    
    
}
