//
//  ViewController.swift
//  TreeTableViewAndMore
//
//  Created by Thiago Valentim on 22/08/24.
//

import UIKit

class HomeViewController: UIViewController {

   
    var screen: HomeSreen?
    
    
    
    override func loadView() {
        screen = HomeSreen()
        self.view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
    }


}

