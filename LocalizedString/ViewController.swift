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

    func updateLabel() {
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

