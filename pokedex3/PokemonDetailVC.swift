//
//  PokemonDetailVC.swift
//  pokedex3
//
//  Created by 松岡泰史 on 2016/09/09.
//  Copyright © 2016年 松岡泰史. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {

    var pokemon: Pokemon!
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var defenseLbl: UILabel!
    @IBOutlet weak var heighLbl: UILabel!
    @IBOutlet weak var pokedexLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    @IBOutlet weak var attackLbl: UILabel!
    @IBOutlet weak var currentEvoImg: UIImageView!
    @IBOutlet weak var nextEvoImg: UIImageView!
    @IBOutlet weak var evoLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLbl.text = pokemon.name
        
        //print("Did arrive here")
        pokemon.downloadPokemonDetail {
            // Whatever we write will only be called after the network is compelte
            self.updateUI()
        }
    }
    
    func updateUI() {
        attackLbl.text = pokemon.attack
        defenseLbl.text = pokemon.defense
        heighLbl.text = pokemon.height
        weightLbl.text = pokemon.weight
    }

    @IBAction func backBtnPressed(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }

}
