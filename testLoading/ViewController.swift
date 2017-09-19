//
//  ViewController.swift
//  testLoading
//
//  Created by Nicky on 7/3/17.
//  Copyright © 2017 Nicky. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewLoading: UIView!
    
    let loadingBar: LoadingView = LoadingView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    @IBAction func stopLoading(_ sender: Any) {
        DispatchQueue.main.async {
            self.loadingBar.stopAnimation()
        }
    }
    
    @IBAction func startLoading(_ sender: Any) {
        DispatchQueue.main.async {
            self.loadingBar.startAnimating()
        }
    }
}
