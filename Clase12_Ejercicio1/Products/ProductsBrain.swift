//
//  ProductsBrain.swift
//  Clase12_Ejercicio1
//
//  Created by TEO on 2/01/23.
//

import Foundation

protocol ProductsBrainProtocol {
    func setTableViewController(_ tableViewController: ProductsTableViewControllerProtocol)
    func getNumberOfProducts() -> Int
    func getProductForIndex(for index: Int) -> Product
}

class ProductsBrain {
    weak var tableViewController: ProductsTableViewControllerProtocol?
    let productsStorage: ProductsStorageProtocol = ProductsStorage()
}

extension ProductsBrain: ProductsBrainProtocol {
    func setTableViewController(_ tableViewController: ProductsTableViewControllerProtocol) {
        self.tableViewController = tableViewController
    }
    
    func getNumberOfProducts() -> Int {
        productsStorage.getNumberOfProducts()
    }
    
    func getProductForIndex(for index: Int) -> Product {
        productsStorage.getProductForIndex(for: index)
    }
}
