//
//  ScreenValueViewController.swift
//  ProjectRequestPizzaTwo
//
//  Created by Mirian Santana on 16/03/23.
//

import UIKit

class ScreenValueViewController: UIViewController {
    
    var value: PizzaElement?

    @IBOutlet weak var lblP: UILabel!
    @IBOutlet weak var lblM: UILabel!
    @IBOutlet weak var lblG: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblP.text = "PEQUENA - R$\(value?.priceP ?? 0.0)"
        lblM.text = "MÉDIA - R$\(value?.priceM ?? 0.0)"
        lblG.text = "GRANDE - R$\(value?.priceG ?? 0.0)"
    }
   
    @IBAction func btBack(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
}
