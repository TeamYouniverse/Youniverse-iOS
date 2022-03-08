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
        
        initView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        initView()
    }
}

extension TopLogoView {
    private func initView() {
        setStyle()
        setView()
        setLayout()
    }
}

extension TopLogoView {
    private func createLogoImageView() -> UIImageView {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }
    
    private func setStyle() {
        self.backgroundColor = .clear
    }
    
    private func setView() {
        self.addSubview(logoImageView)
    }
    
    private func setLayout() {
        logoImageView.snp.makeConstraints { make in
//            make.height.equalTo(55)
            make.top.bottom.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }
}
