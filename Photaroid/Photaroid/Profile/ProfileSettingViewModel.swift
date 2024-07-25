//
//  ProfileSettingViewModel.swift
//  Photaroid
//
//  Created by 박재형 on 7/23/24.
//

import Foundation

class ProfileSettingViewModel {
    
    var inputNickname: Observable<String?> = Observable("")
    var outputNickname: Observable<String?> = Observable("")
    
    var isValid = Observable(false)
    
    init() {
        inputNickname.bind { value in
            self.validation()
        }
    }
    
    func compareIsContainSpecialChar(specialChar: String?) -> Bool {
        var isContain = false
        if let specialChar = specialChar {
            for char in specialChar {
                if char == "@" || char == "#" || char == "$" || char == "%" {
                    isContain = true
                    break
                }
            }
        }
        return isContain
    }
    
    func validation() {
        guard let inputNickname = inputNickname.value else { return }
        
        
    }
}
