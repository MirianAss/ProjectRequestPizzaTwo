//
//  ScreenRatingViewController.swift
//  ProjectRequestPizzaTwo
//
//  Created by Mirian Santana on 16/03/23.
//

import UIKit

class ScreenRatingViewController: UIViewController {
    
    var rating: PizzaElement?
    
    @IBOutlet weak var lblText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblText.text = "Segundo nossos clientes, a pizza de \(rating?.name ?? "") está na posição - \(rating?.rating ?? 0)/5 - de aprovação"
    }
    
    @IBAction func btBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btAdvance(_ sender: Any) {
        if let screen = self.storyboard?.instantiateViewController(withIdentifier: "value") as? ScreenValueViewController {
            
            screen.value = rating.self
            
            self.navigationController?.pushViewController(screen, animated: true)
        }
    }
}
