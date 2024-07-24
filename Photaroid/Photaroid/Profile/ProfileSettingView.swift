//
//  ProfileSettingView.swift
//  Photaroid
//
//  Created by 박재형 on 7/23/24.
//

import UIKit
import SnapKit

final class ProfileSettingView: BaseView {
    
    private let profileCameraImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "camera.fill")
        image.tintColor = .white
        image.layer.cornerRadius = 13
        return image
    }()
    
    private let profileCameraView: UIView = {
        let view = UIView()
        view.backgroundColor = MainColor.cumtomBrightBlue
        view.layer.cornerRadius = 13
        return view
    }()
    
    private let profileImage: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "profile_\(Int.random(in: 0...11))"), for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 50
        button.layer.borderWidth = 3
        button.layer.borderColor = MainColor.cumtomBrightBlue.cgColor
        return button
    }()
    
    private let nicknameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "고래밥99개"
        textField.textAlignment = .center
        textField.borderStyle = .none
        return textField
    }()
    
    private let nicknameErrorLabel: UILabel = {
        let label = UILabel()
        label.text = "닉네임에 숫자는 포함될 수 없어요"
        label.textColor = .red
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    private let mbtiButtons: [UIButton] = {
        let types = ["E", "S", "T", "J", "I", "N", "F", "P"]
        return types.map { type in
            let button = UIButton(type: .system)
            button.setTitle(type, for: .normal)
            button.setTitleColor(.black, for: .normal)
            button.layer.cornerRadius = 20
            button.layer.borderWidth = 1
            button.layer.borderColor = UIColor.lightGray.cgColor
            button.snp.makeConstraints { make in
                make.width.height.equalTo(40)
            }
            return button
        }
    }()
    
    private let completeButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("완료", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .lightGray
        button.layer.cornerRadius = 25
        button.snp.makeConstraints { make in
            make.height.equalTo(50)
        }
        return button
    }()
    
    override func configureHierarchy() {
        addSubview(profileImage)
        addSubview(profileCameraView)
        profileCameraView.addSubview(profileCameraImage)
        addSubview(nicknameTextField)
        addSubview(nicknameErrorLabel)
        mbtiButtons.forEach { addSubview($0) }
        addSubview(completeButton)
    }
    
    override func configureLayout() {
        profileImage.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide).offset(40)
            make.centerX.equalToSuperview()
            make.width.height.equalTo(100)
        }
        
        profileCameraView.snp.makeConstraints { make in
            make.right.equalTo(profileImage.snp.right).offset(10)
            make.bottom.equalTo(profileImage.snp.bottom).offset(-10)
            make.size.equalTo(26)
        }
        
        profileCameraImage.snp.makeConstraints { make in
            make.edges.equalTo(profileCameraView)
        }
        
        nicknameTextField.snp.makeConstraints { make in
            make.top.equalTo(profileImage.snp.bottom).offset(20)
            make.left.right.equalToSuperview().inset(20)
            make.height.equalTo(40)
        }
        
        nicknameErrorLabel.snp.makeConstraints { make in
            make.top.equalTo(nicknameTextField.snp.bottom).offset(5)
            make.left.right.equalToSuperview().inset(20)
        }
        
        for (index, button) in mbtiButtons.enumerated() {
            let row = index / 4
            let column = index % 4
            button.snp.makeConstraints { make in
                make.top.equalTo(nicknameErrorLabel.snp.bottom).offset(20 + row * 50)
                make.left.equalToSuperview().inset(20 + column * 50)
            }
        }
        
        completeButton.snp.makeConstraints { make in
            make.top.equalTo(mbtiButtons.last!.snp.bottom).offset(330)
            make.left.right.equalToSuperview().inset(20)
        }
    }
    
}
