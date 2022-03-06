//
//  TopLogoView.swift
//  Youniverse
//
//  Created by Danna Lee on 2022/03/06.
//

import UIKit
import SnapKit

class TopLogoView: UIView {
    private lazy var logoImageView: UIImageView = { createLogoImageView() }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setStyle()
        setView()
        setLayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        setStyle()
        setView()
        setLayout()
    }
}

extension TopLogoView {
    func createLogoImageView() -> UIImageView {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }
    
    func setStyle() {
        self.backgroundColor = .clear
    }
    
    func setView() {
        self.addSubview(logoImageView)
    }
    
    func setLayout() {
        logoImageView.snp.makeConstraints { make in
            make.height.equalTo(55)
            make.center.equalToSuperview()
        }
    }
}
