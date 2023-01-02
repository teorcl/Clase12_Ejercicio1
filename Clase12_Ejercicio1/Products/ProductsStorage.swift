//
//  ProductsStorage.swift
//  Clase12_Ejercicio1
//
//  Created by TEO on 2/01/23.
//

import Foundation

protocol ProductsStorageProtocol {
    func getNumberOfProducts() -> Int
    func getProductForIndex(for index: Int) -> Product
}

class ProductsStorage {
    let products = [
        Product(name: "Televisor", number: "2", image: "tv"),
        Product(name: "Cámara", number: "1", image: "camera"),
        Product(name: "Celular", number: "4", image: "smartphone"),
        Product(name: "Equipo de sonido", number: "1", image: "stereo"),
        Product(name: "Horno microondas", number: "1", image: "microwaveoven"),
        Product(name: "Nevera", number: "1", image: "fridge"),
        Product(name: "Lavadora", number: "1", image: "washer"),
        Product(name: "Licuadora", number: "1", image: "blender"),
        Product(name: "Freidora de Aire", number: "1", image: "airfryer"),
        Product(name: "Cafetera", number: "1", image: "coffeemaker"),
    ]
}

extension ProductsStorage: ProductsStorageProtocol {
    func getNumberOfProducts() -> Int {
        return products.count
    }
    
    func getProductForIndex(for index: Int) -> Product {
        products[index]
    }
}
