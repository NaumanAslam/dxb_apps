//
//  extensions.swift
//  PakID
//
//  Created by Nauman on 19/11/2020.
//

import Foundation
 import LocalAuthentication

import UIKit
extension UIView {
    func cornerBorder(withFactor radius:Int = 2)    {
        self.layer.cornerRadius = self.frame.height/CGFloat(radius)
        
    }
    func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
        
    }
    func addBorder(width: CGFloat = 1, cornerRadius:CGFloat = 8, borderColor: UIColor = .gray){
        self.layer.borderWidth = width
        self.layer.cornerRadius = cornerRadius
        
        self.layer.borderColor = borderColor.cgColor
    }
    func cornerBottomEdges(){
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 40
        self.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
    }
    func addShadow(shadowColor: CGColor = UIColor.lightGray.cgColor, shadowOffset: CGSize = CGSize(width: 3.0, height: 3.0), shadowOpacity: Float = 0.8, shadowRadius: CGFloat = 5.0) {
        let layer = self.layer
        layer.masksToBounds = false
        
        layer.shadowColor = shadowColor
        layer.shadowOffset = shadowOffset
        layer.shadowRadius = shadowRadius
        layer.shadowOpacity = shadowOpacity
        // layer.shadowPath = UIBezierPath(roundedRect: layer.bounds, cornerRadius: layer.cornerRadius).cgPath
        
        let backgroundColor = self.backgroundColor?.cgColor
        self.backgroundColor = nil
        layer.backgroundColor =  backgroundColor
        
    }
}

extension UIColor {
    convenience init(hex: String) {
        let hexString: String = hex.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        let scanner = Scanner(string: hexString)
        
        if hexString.hasPrefix("#") {
            scanner.scanLocation = 1
        }
        
        var color: UInt32 = 0
        scanner.scanHexInt32(&color)
        
        let mask = 0x000000FF
        let r = Int(color >> 16) & mask
        let g = Int(color >> 8) & mask
        let b = Int(color) & mask
        
        let red   = CGFloat(r) / 255.0
        let green = CGFloat(g) / 255.0
        let blue  = CGFloat(b) / 255.0
        
        self.init(red: red, green: green, blue: blue, alpha: 1)
    }
}
 
 
 
  
 
