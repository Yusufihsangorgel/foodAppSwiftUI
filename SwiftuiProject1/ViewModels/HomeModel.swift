//
//  Trip.swift
//  SwiftuiProject1
//
//  Created by Yusuf İhsan Görgel on 9.08.2022.
//

import SwiftUI

struct HomeModel: Identifiable,Hashable{
    var id = UUID().uuidString
    var image: String
    var title: String
}

var homeList = [
    HomeModel(image: "food1", title: "İster Tarif Ara"),
    HomeModel(image: "food2", title: "İster Tarif Ekle"),
    HomeModel(image: "food3", title: "Yemekle Alakalı Her Şey"),
]
