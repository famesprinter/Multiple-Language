//
//  String+MyText.swift
//  LocalizedString
//
//  Created by Kittitat Rodphotong on 12/16/2558 BE.
//  Copyright © 2558 Kittitat Rodphotong. All rights reserved.
//

import Foundation

extension String {
    func localizable() -> String {
        let path = NSBundle.mainBundle().pathForResource(Utils.currentLanguage(), ofType: "lproj")
        let bundle = NSBundle(path: path!)
        
        return NSLocalizedString(self, tableName: nil, bundle: bundle!, value: "", comment: "")
    }
    
}

