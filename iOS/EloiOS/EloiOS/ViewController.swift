//
//  ViewController.swift
//  EloiOS
//
//  Created by Michel de Sousa Carvalho on 01/08/17.
//  Copyright © 2017 Michel de Sousa Carvalho. All rights reserved.
//

import UIKit




class ViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    var delegateHeader: ViewControllerDelegate? 
    var delegateSobre: ViewControllerDelegate?
    var delegateArea: ViewControllerDelegate?
    var delegateFooter: ViewControllerDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Request().load(resource: Content.all) { result in
            
            if self.childViewControllers[0] is HeaderViewController {
                guard let method = self.delegateHeader?.reloadHeader(header: (result?.header)!) else {
                    return
                }
                method
            }
            
            if self.childViewControllers[1] is SobreViewController {
                guard let method = self.delegateSobre?.reloadSobreView(about: (result?.about)!) else {
                    return
                }
                method
            }
            
            if self.childViewControllers[2] is AreaViewController {
                guard let method = self.delegateArea?.reloadAreaView(area: (result?.area)!) else {
                    return
                }
                method
            }
            
            if self.childViewControllers[3] is SocialViewController {
                guard let method = self.delegateFooter?.reloadSocialView(social: (result?.footer)!) else {
                    return
                }
                method
            }
            
        }
        
        let button = UIButton.init(type: .custom)
        button.setImage(UIImage.init(named: "logo"), for: UIControlState.normal)
        button.frame = CGRect.init(x: 0, y: 0, width: 50, height: 30)
        let barButton = UIBarButtonItem.init(customView: button)
        self.navigationItem.leftBarButtonItem = barButton
        
        let rightButtonItem = UIBarButtonItem.init()
        rightButtonItem.title = "Eventos"
        rightButtonItem.tintColor = UIColor.init(colorLiteralRed: 45/255, green: 140/255, blue: 138/255, alpha: 1.0)
        
        
        self.navigationItem.rightBarButtonItem = rightButtonItem
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    

}

