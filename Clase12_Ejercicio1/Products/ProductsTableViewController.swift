//
//  ProductsTableViewController.swift
//  Clase12_Ejercicio1
//
//  Created by TEO on 2/01/23.
//

import UIKit


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
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        guard let cell = tableView.cellForRow(at: indexPath) else {return}
        
        if cell.accessoryType == .checkmark {
            cell.accessoryType = .none
        } else {
            cell.accessoryType = .checkmark
        }
    }
    
}
