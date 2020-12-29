//
//  PantryController.swift
//  Mealy
//
//  Created by Lucas Budz on 2020-12-28.
//

import UIKit

class PantryController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: K.cellNibName, bundle: nil), forCellReuseIdentifier: K.cellIdentifier)
    }


}


extension PantryController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return K.categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath) as! FoodCell
        
        cell.label.text = K.categories[indexPath.row]
        cell.leftImageView.image = UIImage(imageLiteralResourceName: K.categories[indexPath.row])
        
        return cell
    }
}

extension PantryController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: K.foodSegue, sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! FoodController
        
        if let indexPath = tableView.indexPathForSelectedRow {
            destinationVC.selectedCategory = K.categories[indexPath.row]
        }
    }
}
