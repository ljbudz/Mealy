//
//  FoodController.swift
//  Mealy
//
//  Created by Lucas Budz on 2020-12-28.
//

import UIKit

class FoodController: UIViewController {
    
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var foodList = [String]()
    var selectedCategory: String?
    
    override func viewDidLoad() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: K.cellNibName, bundle: nil), forCellReuseIdentifier: K.cellIdentifier)
        
        if let category = selectedCategory {
            categoryLabel.text = category
            foodList = K.fakeData[category]!
        }
    }
}

extension FoodController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath) as! FoodCell
        
        cell.label.text = foodList[indexPath.row]
        
        return cell
    }
    
}

extension FoodController: UITableViewDelegate {
    
}
