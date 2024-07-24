//
//  ProfileSettingViewController.swift
//  Photaroid
//
//  Created by 박재형 on 7/23/24.
//

import UIKit

class ProfileSettingViewController: BaseViewController {
    
    let profileSettingView = ProfileSettingView()
    
    override func loadView() {
        super.loadView()
        view = profileSettingView
    }
}
