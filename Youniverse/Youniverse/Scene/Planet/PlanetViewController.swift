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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setNavigationController()
    }

}

extension PlanetViewController {
    private func setNavigationController() {
        navigationItem.titleView = TopLogoView()
    }
}
