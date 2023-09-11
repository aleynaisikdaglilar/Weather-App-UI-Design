//
//  Colors.swift
//  Weather
//
//  Created by Aleyna Isikdaglilar [Ing Teknoloji A.S.-Tuzel Bankacilik Dijital Squad 1] on 1.09.2023.
//

import UIKit

final class CustomColor {
    
    private enum Constant {
        static let backgroundColors = [UIColor(named: "Background 1")?.cgColor, UIColor(named: "Background 2")?.cgColor]
        static let backgroundStartPoint = CGPoint(x: 0, y: 0)
        static let backgroundEndPoint = CGPoint(x: 1, y: 1)
    }
    
    let backgroundGradientLayer: CAGradientLayer = {
        let gradientLayer = CAGradientLayer()
//        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = Constant.backgroundColors
        gradientLayer.startPoint = Constant.backgroundStartPoint
        gradientLayer.endPoint = Constant.backgroundEndPoint
        return gradientLayer
    }()
}
