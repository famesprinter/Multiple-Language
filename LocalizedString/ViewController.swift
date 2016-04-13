//
//  ViewController.swift
//  LocalizedString
//
//  Created by Kittitat Rodphotong on 12/16/2558 BE.
//  Copyright © 2558 Kittitat Rodphotong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - IBOutlet
    @IBOutlet weak var myLabel: UILabel!
    
    // MARK: - Variable
    let dataModel = DataModelContext.dataModelContext

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateLabel()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func updateLabel() {
//        print("\(Utils.currentLanguage())")
        myLabel.text = "HELLO_WORLD".localizable()
    }
    
    @IBAction func setEN() {
        Utils.setLanguage("en")
        updateLabel()
    }
    
    @IBAction func setTH() {
        Utils.setLanguage("th")
        updateLabel()
    }

}

