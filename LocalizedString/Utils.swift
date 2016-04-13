//
//  Utils.swift
//  LocalizedString
//
//  Created by Kittitat Rodphotong on 4/11/2559 BE.
//  Copyright © 2559 Kittitat Rodphotong. All rights reserved.
//

import Foundation

// Language
private let defaultLang = "en"
private let currentLangKey = "CurrentLanguageKey"

class Utils {
    
    // MARK : - Language
     class func setLanguage(lang: String) {
        let language = NSBundle.mainBundle().localizations.contains(lang) ? lang : defaultLang
        if language != currentLanguage() {
            NSUserDefaults.standardUserDefaults().setObject(language, forKey: currentLangKey)
            NSUserDefaults.standardUserDefaults().synchronize()
        }
    }
    
    class func currentLanguage() -> String {
        if let currentLanguage = NSUserDefaults.standardUserDefaults().objectForKey(currentLangKey) as? String {
            return currentLanguage
        }
        return defaultLang
    }
}
