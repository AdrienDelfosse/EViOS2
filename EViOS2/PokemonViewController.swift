//
//  PokemonViewController.swift
//  EViOS2
//
//  Created by Student08 on 22/06/2021.
//

import UIKit

class PokemonViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    var pokemons = [Pokemon(name: "Bulbizarre", type: "grass", imageName:"Bulbizarre" , pokedexNumber: 5, gen: 1, height: 152), Pokemon(name: "Dracaufeu", type: "Fire", imageName: "Dracaufeu", pokedexNumber: 5, gen: 1, height: 250)]
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Pokemon"
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomTableViewCell")
       
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension PokemonViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let pokemonCell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as! CustomTableViewCell
        
        pokemonCell.setupCell(pokemon: pokemons[indexPath.row])
            return pokemonCell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 160
        }
    
}
    
