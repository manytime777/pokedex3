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

    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLbl.text = pokemon.name
    }


}
