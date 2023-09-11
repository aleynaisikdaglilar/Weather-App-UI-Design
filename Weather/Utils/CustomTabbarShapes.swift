//
//  CustomTabbarShapes.swift
//  Weather
//
//  Created by Aleyna Isikdaglilar [Ing Teknoloji A.S.-Tuzel Bankacilik Dijital Squad 1] on 31.08.2023.
//

import UIKit

class CustomTabbarShapes: UIView {
    
    override func draw(_ rect: CGRect) {
        let shape = UIBezierPath()
        shape.move(to: CGPoint(x: 0, y: 10))
        shape.addQuadCurve(to: CGPoint(x: UIScreen.main.bounds.size.width, y: 10), controlPoint: CGPoint(x: UIScreen.main.bounds.size.width / 2, y: 50))
        shape.addLine(to: CGPoint(x: UIScreen.main.bounds.size.width, y: UIScreen.main.bounds.size.height))
        shape.addLine(to: CGPoint(x: 0, y: UIScreen.main.bounds.size.height))
        shape.close()
        
        UIColor(white: 1, alpha: 0.5).setFill()
        
//        UIColor.white.setFill()
        shape.fill()
        
        UIColor.red.setStroke()
        shape.stroke()
    }
}
