//
//  TabBar.swift
//  Weather
//
//  Created by Aleyna Isikdaglilar [Ing Teknoloji A.S.-Tuzel Bankacilik Dijital Squad 1] on 27.07.2023.
//

import UIKit

final class TabBar: UITabBarController {
    
//    let stackView: UIStackView = {
//        let stackView = UIStackView()
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//        stackView.axis = NSLayoutConstraint.Axis.horizontal
//        stackView.distribution = .fill
////        stackView.alignment = .fill
//        stackView.frame = .infinite
//        stackView.alignment = .bottom
//        return stackView
//    }()
//
//    let icon: UIImageView = {
//        let imageView = UIImageView()
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        imageView.image = UIImage(systemName: "mappin.and.ellipse")
////        imageView.setmax = 44
////        imageView.widthAnchor = 44
//        imageView.contentMode = .scaleAspectFill
//        imageView.layer.masksToBounds = true
//        imageView.frame = .infinite
//        imageView.frame = .init(x: 0, y: 0, width: 44, height: 44)
//        return imageView
//    }()

    override func viewDidLoad() {
        super.viewDidLoad()
//        view.overrideUserInterfaceStyle = .dark
        self.setupTabs()
        
        
        
//        navigationItem.backButtonTitle = "back"
//        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 200, height: 40))
//        view.addSubview(button)
//        button.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//
//        let tabOne = LeftController()
//        let tabOneBarItem = UITabBarItem(title: "Tab 1", image: UIImage(named: "defaultImage.png"), selectedImage: UIImage(named: "selectedImage.png"))
//
//        let tabTwo = MiddleController()
//        let tabTwoBarItem2 = UITabBarItem(title: "Tab 2", image: UIImage(named: "defaultImage2.png"), selectedImage: UIImage(named: "selectedImage2.png"))
//
//        tabTwo.tabBarItem = tabTwoBarItem2
//
//
//        self.viewControllers = [tabOne, tabTwo]
//
//        tabOne.tabBarItem = tabOneBarItem
//    }
    
    private func setupTabs() {
        let left = self.createNav(image: UIImage(systemName: "mappin.and.ellipse"), vc: LeftController())
        let middle = self.createNav(image: UIImage(systemName: "Home"), vc: MiddleController())
        let right = self.createNav(image: UIImage(systemName: "list.star"), vc: RightController())
        self.setViewControllers([left,middle,right], animated: true)
    }
    
    private func createNav(image: UIImage?, vc: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: vc)
        nav.tabBarItem.title = title
        nav.tabBarItem.image = image
        
        nav.viewControllers.first?.navigationItem.title = title
//        nav.viewControllers.first?.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Button", style: .plain, target: nil, action: nil)
        return nav
    }
//   @objc func buttonClicked() {
//     let secondControler = SecondController()
//       navigationController?.pushViewController(secondControler, animated: true)
//    }

}
