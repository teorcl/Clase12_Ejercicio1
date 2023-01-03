//
//  ProductsBrain.swift
//  Clase12_Ejercicio1
//
//  Created by TEO on 2/01/23.
//

import Foundation

protocol ProductsBrainProtocol {
    func getNumberOfProducts() -> Int
    func getProductForIndex(for index: Int) -> Product
}

class ProductsBrain {

    let productsStorage: ProductsStorageProtocol = ProductsStorage()
}

extension ProductsBrain: ProductsBrainProtocol {
    
    func getNumberOfProducts() -> Int {
        productsStorage.getNumberOfProducts()
    }
    
    func getProductForIndex(for index: Int) -> Product {
        productsStorage.getProductForIndex(for: index)
    }
}
