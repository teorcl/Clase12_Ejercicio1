//
//  ProductCell.swift
//  Clase12_Ejercicio1
//
//  Created by TEO on 2/01/23.
//

import UIKit

protocol ProductCellProtocol where Self: UITableViewCell {
    func setProductName(_ productName: String)
    func setNumberOfProducts(_ numberOfProducts: String)
    func setProductImage(_ productImage: UIImage?)
}

class ProductCell: UITableViewCell {
    
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var numberOfProductsLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    
}

extension ProductCell: ProductCellProtocol {
    func setProductName(_ productName: String) {
        productNameLabel.text = productName
    }
    
    func setNumberOfProducts(_ numberOfProducts: String) {
        numberOfProductsLabel.text = numberOfProducts
    }
    
    func setProductImage(_ productImage: UIImage?) {
        productImageView.image = productImage
    }
    
    
}
