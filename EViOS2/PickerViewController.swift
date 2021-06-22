//
//  PickerViewController.swift
//  EViOS2
//
//  Created by Student08 on 22/06/2021.
//
import SafariServices
import UIKit

class PickerViewController: UIViewController {
    
    @IBOutlet weak var infoButton: UIButton!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var pokemonImageView: UIImageView!
    var pokemons = [Pokemon(name: "Bulbizarre", type: "grass", imageName:"Bulbizarre" , pokedexNumber: 5, gen: 1, height: 152), Pokemon(name: "Dracaufeu", type: "Fire", imageName: "Dracaufeu", pokedexNumber: 5, gen: 1, height: 250)]
    
    var color: [UIColor] = [.white, .red, .blue, .black, .green, .yellow]
    

    @IBAction func didPressOnMoreInfo(_ sender: Any) {
        if let url = URL(string: NSLocalizedString("url", comment: "")) {
        let vc = SFSafariViewController (url: url)
        present(vc, animated: true) }
        }
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Picker"
        pickerView.delegate = self
        pickerView.dataSource = self
        infoButton.setTitle("More info", for: .normal)
    }
    


}

extension PickerViewController: UIPickerViewDataSource, UIPickerViewDelegate {

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component {
        case 0:
            return pokemons.count
        case 1:
            return color.count
        default:
            return 0
        }
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {

        switch component {
        case 0:
            return pokemons[row].name
        case 1:
            return color[row].accessibilityName
        default:
            return ""
        }
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {

        switch component {
        case 0:
            pokemonImageView.image = UIImage(named: pokemons[row].imageName)
        case 1:
            pokemonImageView.backgroundColor = color[row]
        default:
            break
        }
    }
}
