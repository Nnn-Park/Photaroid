//
//  ColorResource.swift
//  Photaroid
//
//  Created by 박재형 on 7/22/24.
//

import UIKit

// MARK: - HEX Value To UICOLOR
extension UIColor {
    
    public convenience init(hexCode: String, alpha: CGFloat) {
        
        var hexFormatted: String = hexCode.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).uppercased()
        
        if hexFormatted.hasPrefix("#") {
            hexFormatted = String(hexFormatted.dropFirst())
        }
        
        assert(hexFormatted.count == 6, ColorError.invalidHEXCode.localizedDescription)
        
        var rgbColorValue: UInt64 = 0
        Scanner(string: hexFormatted).scanHexInt64(&rgbColorValue)
        
        self.init(
            red: CGFloat((rgbColorValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbColorValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbColorValue & 0x0000FF) / 255.0,
            alpha: alpha
        )
    }
}

// MARK: - COlOR 변환 오류 핸들링
enum ColorError: LocalizedError {
    case invalidHEXCode
    
    var errorDescription: String? {
        switch self {
        case .invalidHEXCode:
            return "Use of invalid HEX CODE value."
        }
    }
}

// MARK: - HEX Value To UICOLOR 적용
enum MainColor {
    static let cumtomBrightBlue = UIColor(hexCode: "186FF2", alpha: 1)
    static let customBrightGray = UIColor(hexCode: "8C8C8C", alpha: 1)
    static let customDarkGray = UIColor(hexCode: "4D5652", alpha: 1)
    static let customBlack = UIColor(hexCode: "000000", alpha: 1)
    static let customOpacityWhite = UIColor(hexCode: "F2F2F2", alpha: 1)
    static let customWhite = UIColor(hexCode: "FFFFFF", alpha: 1)
    static let customBrightRed = UIColor(hexCode: "F04452", alpha: 1)
}
