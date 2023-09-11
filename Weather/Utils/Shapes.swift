//
//  Shapes.swift
//  Weather
//
//  Created by Aleyna Isikdaglilar [Ing Teknoloji A.S.-Tuzel Bankacilik Dijital Squad 1] on 28.08.2023.
//

import UIKit

//struct Arc {
//    func path(in rect: CGRect) -> UIBezierPath {
//        var path = UIBezierPath()
//
//        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
//        path.addQuadCurve(to: CGPoint(x: rect.maxX, y: rect.minY), controlPoint: CGPoint(x: rect.midX, y: rect.midY))
//        return path
//    }
//}


struct Arc {
    func getPathForTabBar() -> UIBezierPath {
        let path = UIBezierPath()
        let rect = CGRect()
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addQuadCurve(to: CGPoint(x: rect.maxX, y: rect.minY), controlPoint: CGPoint(x: rect.midX, y: rect.midY))
//        path.move(to: CGPoint(x: 50, y: 50))
//        path.addLine(to: CGPoint(x: 100, y: 50))
        path.close()
        return path
    }
}


