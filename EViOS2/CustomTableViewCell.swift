//
//  CustomTableViewCell.swift
//  EViOS2
//
//  Created by Student08 on 22/06/2021.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var pokemonLabel: UILabel!
  
    @IBOutlet weak var pokemonImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell(pokemon:Pokemon){
        pokemonImageView.image = UIImage(named: pokemon.imageName)
        pokemonLabel.text = pokemon.name
    }
    
}


