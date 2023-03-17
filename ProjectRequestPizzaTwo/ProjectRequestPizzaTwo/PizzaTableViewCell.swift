//
//  PizzaTableViewCell.swift
//  ProjectRequestPizzaTwo
//
//  Created by Mirian Santana on 16/03/23.
//

import UIKit
import SDWebImage

class PizzaTableViewCell: UITableViewCell {

    @IBOutlet weak var ImagePizza: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell(pizza: PizzaElement?) {
        lblName.text = pizza?.name ?? ""
        let urlImage = URL(string: pizza?.imageURL ?? "")
        ImagePizza.sd_setImage(with: urlImage)
    }
}
