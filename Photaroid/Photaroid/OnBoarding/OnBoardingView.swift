//
//  OnBoardingView.swift
//  Photaroid
//
//  Created by 박재형 on 7/22/24.
//

import UIKit
import SnapKit

final class OnBoardingView: BaseView {
    
    private let onBoardingMainTitle: UILabel = {
        let label = UILabel()
        
        label.text = "PHOTAROID"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        label.textColor = MainColor.cumtomBrightBlue
        
        return label
    }()
    
    private let onBoardingMainImage: UIImageView = {
        let image = UIImageView()
        
        image.image = UIImage(named: "launchImage")
        
        return image
    }()
    
    private let onBoardingMyName: UILabel = {
        let label = UILabel()
        
        label.text = "박재형"
        label.textAlignment = .center
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 25)
        
        return label
    }()
    
    lazy var startButton: UIButton = {
        let button = UIButton()
        
        button.setTitle("시작하기", for: .normal)
        button.backgroundColor = MainColor.cumtomBrightBlue
        button.layer.cornerRadius = 25
        
        return button
    }()
    
    override func configureHierarchy() {
        addSubview(onBoardingMainTitle)
        addSubview(onBoardingMainImage)
        addSubview(onBoardingMyName)
        addSubview(startButton)
    }
    
    override func configureLayout() {
        onBoardingMainTitle.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(safeAreaLayoutGuide).offset(50)
            make.height.equalTo(50)
            make.width.equalTo(250)
        }
        
        onBoardingMainImage.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(onBoardingMainTitle.snp.bottom).offset(50)
        }
        
        onBoardingMyName.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(onBoardingMainImage.snp.bottom).offset(35)
            
        }
        
        startButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(onBoardingMyName.snp.bottom).offset(50)
            make.width.equalTo(350)
            make.height.equalTo(50)
        }
    }
    
    override func configureUI() {
    }
    
}
