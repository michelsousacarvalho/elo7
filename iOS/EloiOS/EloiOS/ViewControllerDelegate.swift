//
//  ViewControllerDelegate.swift
//  EloiOS
//
//  Created by Michel de Sousa Carvalho on 18/08/17.
//  Copyright © 2017 Michel de Sousa Carvalho. All rights reserved.
//

import Foundation

protocol ViewControllerDelegate {
    func reloadHeader(header: Header)
    func reloadSobreView(about: About)
    func reloadAreaView(area:Area)
    func reloadSocialView(social: Footer)
}

extension ViewControllerDelegate {
    
    func reloadHeader(header: Header) {
        
    }
    
    func reloadSobreView(about: About) {
        
    }
    
    func reloadAreaView(area:Area) {
        
    }
    
    func reloadSocialView(social: Footer) {
        
    }
}
