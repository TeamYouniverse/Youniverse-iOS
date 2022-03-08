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


}

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

