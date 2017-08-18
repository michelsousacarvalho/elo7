//
//  SocialViewController.swift
//  EloiOS
//
//  Created by Michel de Sousa Carvalho on 17/08/17.
//  Copyright © 2017 Michel de Sousa Carvalho. All rights reserved.
//

import UIKit

class SocialViewController: UIViewController, ViewControllerDelegate {

    @IBOutlet weak var titleSocial: UILabel!
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img3: UIImageView!
    @IBOutlet weak var img4: UIImageView!
    @IBOutlet weak var img5: UIImageView!
    @IBOutlet weak var img6: UIImageView!
    @IBOutlet weak var img7: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let vc = self.parent as? ViewController {
            vc.delegateFooter = self
        }
    }
    
    func reloadSocialView(social: Footer) {
        DispatchQueue.main.async {
            self.titleSocial.text = social.title 
            
            self.img1.image = UIImage.init(named:social.elements[0].img)
            self.img2.image = UIImage.init(named:social.elements[1].img)
            self.img3.image = UIImage.init(named:social.elements[2].img)
            self.img4.image = UIImage.init(named:social.elements[3].img)
            self.img5.image = UIImage.init(named:social.elements[4].img)
            self.img6.image = UIImage.init(named:social.elements[5].img)
            self.img7.image = UIImage.init(named:social.elements[6].img)
            
            
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
