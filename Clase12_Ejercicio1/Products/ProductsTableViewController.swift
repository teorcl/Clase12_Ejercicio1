//
//  ProductsTableViewController.swift
//  Clase12_Ejercicio1
//
//  Created by TEO on 2/01/23.
//

import UIKit

protocol ProductsTableViewControllerProtocol: AnyObject {
    
}

class ProductsTableViewController: UITableViewController {
    
    private struct Const {
        static let cellIdentifier = "ProductCell"
    }
    
    
    let brain : ProductsBrainProtocol = ProductsBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        brain.setTableViewController(self)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        brain.getNumberOfProducts()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Const.cellIdentifier, for: indexPath) as! ProductCellProtocol
        let product = brain.getProductForIndex(for: indexPath.row)
        cell.setProductName(product.name)
        cell.setNumberOfProducts(product.number)
        let productImage = UIImage(named: product.image)
        cell.setProductImage(productImage)
        cell.accessoryType = .none
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        // Esto lo debo procesar el cerebro
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
    }
    
}

extension ProductsTableViewController: ProductsTableViewControllerProtocol {
    
}
