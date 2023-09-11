//
//  DetailViewController.swift
//  Weather
//
//  Created by Aleyna Isikdaglilar [Ing Teknoloji A.S.-Tuzel Bankacilik Dijital Squad 1] on 6.09.2023.
//

import UIKit

class DetailViewController: UIViewController {
    
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    private func prepareUI() {
        view.addSubview(scrollView)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        prepareUI()
        
    }

}
