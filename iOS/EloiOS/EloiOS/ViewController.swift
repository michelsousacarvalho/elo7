//
//  ViewController.swift
//  EloiOS
//
//  Created by Michel de Sousa Carvalho on 01/08/17.
//  Copyright © 2017 Michel de Sousa Carvalho. All rights reserved.
//

import UIKit


protocol ViewControllerDelegate {
    func reloadSobreView(about: About)
    func reloadAreaView(area:Area)
}

extension ViewControllerDelegate {
    func reloadSobreView(about: About) {
        
    }
    func reloadAreaView(area:Area) {
        
    }
}


class ViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    var delegateSobre: ViewControllerDelegate?
    var delegateArea: ViewControllerDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Request().load(resource: Content.all) { result in
            
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
            
        }
        
        
        
        
//       let urlRequest =  URLRequest.init(url: URL(string:"https://michelsousacarvalho.github.io")!, cachePolicy: NSURLRequest.CachePolicy.reloadIgnoringLocalAndRemoteCacheData, timeoutInterval: 10.0)
//        self.webView.loadRequest(urlRequest)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == Constant.segueSobre {
//            let sobreVC = segue.destination as! SobreCollectionViewController
//            if let content = sender as? Content {
//                sobreVC.sobre = content.about
//            }
            
        }
        
        
    }
    
    

}

