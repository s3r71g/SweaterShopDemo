//
//  Product.swift
//  SweaterShopDemo
//
//  Created by Oracle on 12/11/23.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "Colour Sweater", image: "sweater1", price: 54),
                   Product(name: "Grey Sweater", image: "sweater2", price: 69),
                   Product(name: "Orange Sweater", image: "sweater3", price: 42),
                   Product(name: "White Sweater", image: "sweater4", price: 33),
                   Product(name: "Black Sweater", image: "sweater5", price: 83),
                   Product(name: "No Sweater", image: "sweater6", price: 63),
                   Product(name: "Yellow Sweater", image: "sweater7", price: 58),
                   Product(name: "Red Sweater", image: "sweater8", price: 71),]
