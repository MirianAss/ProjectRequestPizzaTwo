//
//  TableViewViewController.swift
//  ProjectRequestPizzaTwo
//
//  Created by Mirian Santana on 16/03/23.
//

import UIKit
import Alamofire

class TableViewViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var arrayPizza: Pizza?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        requestPizza()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "PizzaTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }
    
    func requestPizza() {
        AF.request("https://p3teufi0k9.execute-api.us-east-1.amazonaws.com/v1/pizza").response { response in
            
            let pizza = try? JSONDecoder().decode(Pizza.self, from: response.data ?? Data())
            self.arrayPizza = pizza
            self.tableView.reloadData()
        }
    }
}
extension TableViewViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrayPizza?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? PizzaTableViewCell {
            
            cell.setupCell(pizza: self.arrayPizza?[indexPath.row])
            
            return cell
        }
        return UITableViewCell() 
    }
}
extension TableViewViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let screen = self.storyboard?.instantiateViewController(withIdentifier: "rating") as? ScreenRatingViewController {
            
            screen.rating = arrayPizza?[indexPath.row]
            
            self.navigationController?.pushViewController(screen, animated: true)
        }
    }
}
