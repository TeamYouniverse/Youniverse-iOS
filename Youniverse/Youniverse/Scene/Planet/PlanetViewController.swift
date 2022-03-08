//
//  PlanetViewController.swift
//  Youniverse
//
//  Created by Danna Lee on 2022/03/08.
//

import UIKit

class PlanetViewController: UIViewController {
    
    //MARK: - Properties
    var targetPlanet: Planet?
    
    //MARK: - IBOutlets
    @IBOutlet var planetImageView: UIButton!
    
    //MARK: - Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()

        setNavigationController()
    }

}

//MARK: - Design
extension PlanetViewController {
    private func setNavigationController() {
        navigationItem.titleView = TopLogoView()
    }
}
