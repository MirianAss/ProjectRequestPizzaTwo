//
//  ViewController.swift
//  ProjectRequestPizzaTwo
//
//  Created by Mirian Santana on 16/03/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btStart(_ sender: Any) {
        
        if let screen = self.storyboard?.instantiateViewController(withIdentifier: "navigation") {
            
            self.present(screen, animated: true)
        }
    }
}

