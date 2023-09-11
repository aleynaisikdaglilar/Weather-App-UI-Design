//
//  CustomTabbar.swift
//  Weather
//
//  Created by Aleyna Isikdaglilar [Ing Teknoloji A.S.-Tuzel Bankacilik Dijital Squad 1] on 12.08.2023.
//

import UIKit

final class CustomTabbar: UIView {
    
    lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = NSLayoutConstraint.Axis.horizontal
        stackView.distribution = .fill
        stackView.alignment = .fill
        stackView.contentMode = .center
        stackView.spacing = 240
//        stackView.spacing = UIScreen.main.bounds.size.width / 2
        return stackView
    }()
    
    let leftButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "mappin.and.ellipse"), for: .normal)
        button.tintColor = .white
//        button.contentMode = .bottomLeft
//        button.layoutMargins = UIEdgeInsets(top: 0 , left: 80, bottom: 0, right: 0)
//        button.backgroundColor = .systemPink
        button.addTarget(CustomTabbar.self, action: #selector(ViewController.configureSheet), for: .touchUpInside)
        return button
    }()
    
//    @objc func configureSheet() {
//        print("asdfghjk")
////        let detailVC = DetailViewController()
////        ViewController().navigationController?.pushViewController(detailVC, animated: true)
////        navigationController?.present(detailVC, animated: true)
//        
//    }
    
    let rightButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "list.star"), for: .normal)
        button.tintColor = .white
//        button.contentMode = .bottomRight
//        button.layoutMargins = UIEdgeInsets(top: 0 , left: 0, bottom: 0, right: 32)
//        button.backgroundColor = .red
//        button.addTarget(self, action: #selector(self.nextButtonAction(_:)), for: .touchUpInside)
        return button
    }()
    
    let imageViewRectangle: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "Rectangle 364")
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    let imageViewSubtract: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "Subtract")
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    let imageViewEllipse1: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "Ellipse 1")
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    let imageViewEllipse2: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "Ellipse 2")
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    let imageViewEllipseMask: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "Mask")
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    let imageViewEllipseBlur: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "Ellipse Blur")
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
   
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        NSLayoutConstraint.activate([
            leftButton.widthAnchor.constraint(equalToConstant: 44),
            leftButton.heightAnchor.constraint(equalToConstant: 44),

            rightButton.widthAnchor.constraint(equalToConstant: 44),
            rightButton.heightAnchor.constraint(equalToConstant: 44)
        ])

//        stackView.addArrangedSubview(imageViewRectangle)
////        stackView.addArrangedSubview(leftButton)
////        stackView.addArrangedSubview(rightButton)
//        addSubview(stackView)

        addSubview(imageViewRectangle)
//        addSubview(imageViewSubtract)
//        addSubview(imageViewEllipse1)
//        addSubview(imageViewEllipse2)
        
        
        stackView.addArrangedSubview(leftButton)
        stackView.addArrangedSubview(rightButton)
        addSubview(stackView)
        NSLayoutConstraint.activate([
            
            
            
            imageViewRectangle.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 40),
            imageViewRectangle.leadingAnchor.constraint(equalTo: leadingAnchor),
            
            stackView.topAnchor.constraint(equalTo: imageViewRectangle.topAnchor, constant: 25),
            stackView.leadingAnchor.constraint(equalTo: imageViewRectangle.leadingAnchor, constant: 30)
            
//            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
//            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
//            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
//            stackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 40),
            
            

//
//            imageViewSubtract.bottomAnchor.constraint(equalTo: imageViewRectangle.bottomAnchor),
//            imageViewSubtract.centerXAnchor.constraint(equalTo: imageViewRectangle.centerXAnchor),
//
//            imageViewEllipse1.topAnchor.constraint(equalTo: imageViewSubtract.topAnchor, constant: 12),
//            imageViewEllipse1.centerXAnchor.constraint(equalTo: imageViewSubtract.centerXAnchor),
//
//            imageViewEllipse2.topAnchor.constraint(equalTo: imageViewSubtract.topAnchor, constant: -15),
//            imageViewEllipse2.centerXAnchor.constraint(equalTo: imageViewSubtract.centerXAnchor),
            
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
