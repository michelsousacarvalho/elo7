//
//  HeaderViewController.swift
//  EloiOS
//
//  Created by Michel de Sousa Carvalho on 13/08/17.
//  Copyright © 2017 Michel de Sousa Carvalho. All rights reserved.
//

import UIKit

class HeaderViewController: UIViewController, ViewControllerDelegate {
    @IBOutlet weak var backgroundImg: UIImageView!
    @IBOutlet weak var textImg: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
   
        
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let vc = self.parent as? ViewController {
            vc.delegateHeader = self
        }
    }
    
    func reloadHeader(header: Header) {
        DispatchQueue.main.async {
            self.backgroundImg.image = UIImage.init(named: header.imageBackground)
            self.textImg.image = UIImage.init(named: header.textImage)
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
