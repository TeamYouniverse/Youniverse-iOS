//
//  ViewController.swift
//  Youniverse
//
//  Created by Danna Lee on 2022/03/06.
//

import UIKit

class MainViewController: UIViewController {

    //MARK: - IBOutlet
    @IBOutlet var planetNameLabel: UILabel!
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setNavigationController()
        setStyle()
    }
    
    //MARK: - IBActions
    @IBAction func happyPlanetDidTap(_ sender: Any) {
        handlePlanetDidTap(planet: .happy)
    }
    
    @IBAction func sadPlanetDidTap(_ sender: Any) {
        handlePlanetDidTap(planet: .sad)
    }
    
    @IBAction func touchingPlanetDidTap(_ sender: Any) {
        handlePlanetDidTap(planet: .touching)
    }
    
    @IBAction func sorryPlanetDidTap(_ sender: Any) {
        handlePlanetDidTap(planet: .sorry)
    }
}

//MARK: - Design
extension MainViewController {
    private func setNavigationController() {
        navigationItem.titleView = TopLogoView()
    }
    
    private func setStyle() {
        planetNameLabel.textAlignment = .center
        planetNameLabel.font = .JejuMyeongjo(size: 16)
        planetNameLabel.text = "고양이냥"
        planetNameLabel.textColor = .white
    }
}

//MARK: - Action
extension MainViewController {
    private func handlePlanetDidTap(planet: Planet) {
        let nextStoryboard = UIStoryboard(name: "Planet", bundle: nil)
        
        guard let dvc = nextStoryboard.instantiateViewController(identifier: "PlanetViewController") as? PlanetViewController else {
            return
        }
        
        navigationController?.pushViewController(dvc, animated: true)
    }
}
