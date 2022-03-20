//
//  Extensions_Label.swift
//  app
//
//  Created by Julio Enrique Barrón Castañeda on 19/03/22.
//

import Foundation
import UIKit

extension UILabel {
    func halfTextColorChange (fullText: String, changeText: String, color: UIColor) {
        let strNumber: NSString = fullText as NSString
        let range = (strNumber).range(of: changeText)
        let attribute = NSMutableAttributedString.init(string: fullText)
        attribute.addAttribute(NSAttributedString.Key.foregroundColor, value: color , range: range)
        self.attributedText = attribute
    }
}
