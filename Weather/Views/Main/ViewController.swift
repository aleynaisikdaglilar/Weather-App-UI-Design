//
//  ViewController.swift
//  Weather
//
//  Created by Aleyna Isikdaglilar [Ing Teknoloji A.S.-Tuzel Bankacilik Dijital Squad 1] on 24.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private enum Constant {
        static let backgroundColors = [UIColor(named: "Background 1")?.cgColor, UIColor(named: "Background 2")?.cgColor]
        static let backgroundStartPoint = CGPoint(x: 0, y: 0)
        static let backgroundEndPoint = CGPoint(x: 1, y: 1)
    }
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = NSLayoutConstraint.Axis.vertical
        stackView.distribution = .fill
        stackView.alignment = .fill
        stackView.spacing = -10
        return stackView
    }()
    
    let stackViewInside: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = NSLayoutConstraint.Axis.vertical
        stackView.distribution = .fill
        stackView.alignment = .fill
        return stackView
    }()
    
    //    Background Color
    let backgroundImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "Background")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    //    Background House Image
    let backgroundHouseImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "House")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true
        imageView.frame = .infinite
        return imageView
    }()
    
    lazy var backgroundGradientLayer: CAGradientLayer = {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = Constant.backgroundColors
        gradientLayer.startPoint = Constant.backgroundStartPoint
        gradientLayer.endPoint = Constant.backgroundEndPoint
        return gradientLayer
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Montreal"
        label.font = .systemFont(ofSize: 34, weight: .regular)
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    let meteorologyLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "19°"
        label.font = .systemFont(ofSize: 96, weight: .thin)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    let degreeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Mostly Clear"
        label.font = .systemFont(ofSize: 20, weight: .semibold)
        label.textColor = UIColor(red: 0.92, green: 0.92, blue: 0.96, alpha: 0.6)
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    let subTitleLabelLH: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "H:24°   L:18°"
        label.font = .systemFont(ofSize: 20, weight: .semibold)
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    lazy var bottomStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = NSLayoutConstraint.Axis.horizontal
        stackView.distribution = .fill
        stackView.alignment = .fill
//        stackView.layoutMargins = UIEdgeInsets(top: , left: 0, bottom: 0, right: 0)
        stackView.isLayoutMarginsRelativeArrangement = true
//        let a = CustomTabbar()
//        a.leftButton.addTarget(self, action: #selector(configureSheet), for: .touchUpInside)
        return stackView
    }()
    
//    let a = CustomTabbar()
//    a.leftButton.addTarget(self, action: #selector(self.configureSheet(_:)), for: .touchUpInside)
    
    private var mutableAttributedString: NSMutableAttributedString {
        
        let mutableString = NSMutableAttributedString("")
        
        let temp = NSAttributedString(string:"19°", attributes:
                                        [NSAttributedString.Key.foregroundColor: UIColor.white, NSAttributedString.Key.font:
                                            UIFont.systemFont(ofSize: 96, weight: .thin)])
        mutableString.append(temp)
        
        let pipe = NSAttributedString(string:" | ", attributes:
                                        [NSAttributedString.Key.foregroundColor: UIColor(red: 0.92, green: 0.92, blue: 0.96, alpha: 0.6), NSAttributedString.Key.font:
                                            UIFont.systemFont(ofSize: 20, weight: .semibold)])
        
        mutableString.append(pipe)
        
        let weather = NSAttributedString(string:"Mostly Clear", attributes:
                                            [NSAttributedString.Key.foregroundColor: UIColor(red: 0.92, green: 0.92, blue: 0.96, alpha: 0.6), NSAttributedString.Key.font:
                                                UIFont.systemFont(ofSize: 20, weight: .semibold)])
        mutableString.append(weather)
        
        return mutableString
    }
    
    private func prepareUI() {
        
        view.layer.addSublayer(backgroundGradientLayer)
        stackView.addArrangedSubview(backgroundImage)
        stackView.addArrangedSubview(backgroundHouseImage)
        stackViewInside.addArrangedSubview(titleLabel)
        stackViewInside.addArrangedSubview(meteorologyLabel)
        stackViewInside.addArrangedSubview(degreeLabel)
        stackViewInside.addArrangedSubview(subTitleLabelLH)
        view.addSubview(stackView)
        view.addSubview(stackViewInside)
        bottomStackView.addArrangedSubview(CustomTabbar())
        view.addSubview(bottomStackView)
        
        
        backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        backgroundImage.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0).isActive = true
        
        backgroundHouseImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 257).isActive = true
        
        stackViewInside.topAnchor.constraint(equalTo: view.topAnchor, constant: 52).isActive = true
        stackViewInside.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        bottomStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
//        bottomStackView.contentInsetAdjustmentBehavior = .never
//        bottomStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
//        CustomTabbar().bottomAnchor.constraint(equalTo: stackView.bottomAnchor).isActive = true
    }
    
    @objc func configureSheet() {
        print("asdfghjk")
//        let detailVC = DetailViewController()
//        ViewController().navigationController?.pushViewController(detailVC, animated: true)
//        navigationController?.present(detailVC, animated: true)
        
    }
    
//    @objc func buttonClicked() {
//        let leftControler = MiddleController()
//        navigationController?.pushViewController(leftControler, animated: true)
//    }
    
//    @objc func configureSheet() {
//        let detailVC = DetailViewController()
//        navigationController?.pushViewController(detailVC, animated: true)
////        navigationController?.present(detailVC, animated: true)
//        
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.overrideUserInterfaceStyle = .dark
        navigationItem.backButtonTitle = "back"
//        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "paperplane.fill"), style: .plain, target: self, action: #selector(buttonClicked))
        prepareUI()
        
        
//        let customTabbar = CustomTabbarShapes(frame: CGRect(x: 0, y: self.view.frame.height - 100, width: self.view.frame.width, height: self.view.frame.width))
//        customTabbar.isOpaque = false
//        self.view.addSubview(customTabbar)
    }
}

