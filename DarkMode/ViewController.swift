//
//  ViewController.swift
//  DarkMode
//
//  Created by YASIN AKCA on 31.03.2020.
//  Copyright © 2020 YASIN AKCA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //kullanıcının secimini ezmek istersem
        //overrideUserInterfaceStyle = .light
        
        //butun app'de kullanıcının secimini ezmek icin info.plist dosyasında User Interface Style ayarı degistirilebilir.
        
        
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        
        if userInterfaceStyle == .dark {
            changeButton.tintColor = UIColor.white
        }else {
            changeButton.tintColor = UIColor.blue
        }
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        
        if userInterfaceStyle == .dark {
            changeButton.tintColor = UIColor.white
        } else {
            changeButton.tintColor = UIColor.blue
        }
    }


}

