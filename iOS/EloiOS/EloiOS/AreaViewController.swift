//
//  AreaViewController.swift
//  EloiOS
//
//  Created by Michel de Sousa Carvalho on 17/08/17.
//  Copyright © 2017 Michel de Sousa Carvalho. All rights reserved.
//

import UIKit

class AreaViewController: UIViewController, ViewControllerDelegate {

    
    @IBOutlet weak var titleSection: UILabel!
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var nameImg1: UILabel!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var nameImg2: UILabel!
    @IBOutlet weak var img3: UIImageView!
    @IBOutlet weak var nameImg3: UILabel!
    @IBOutlet weak var img4: UIImageView!
    @IBOutlet weak var nameImg4: UILabel!
    @IBOutlet weak var img5: UIImageView!
    @IBOutlet weak var nameImg5: UILabel!
    @IBOutlet weak var img6: UIImageView!
    @IBOutlet weak var nameImg6: UILabel!
    @IBOutlet weak var img7: UIImageView!
    @IBOutlet weak var nameImg7: UILabel!
    @IBOutlet weak var img8: UIImageView!
    @IBOutlet weak var nameImg8: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let vc = self.parent as? ViewController {
            vc.delegateArea = self
        }
    }
    
    func reloadAreaView(area:Area) {
        DispatchQueue.main.async {
            self.titleSection.text = area.title
            
            self.img1.image = UIImage.init(named: area.elements[0].img)
            self.nameImg1.text = area.elements[0].text
            
            self.img2.image = UIImage.init(named: area.elements[1].img)
            self.nameImg2.text = area.elements[1].text
            
            self.img3.image = UIImage.init(named: area.elements[2].img)
            self.nameImg3.text = area.elements[2].text
            
            self.img4.image = UIImage.init(named: area.elements[3].img)
            self.nameImg4.text = area.elements[3].text
            
            self.img5.image = UIImage.init(named: area.elements[4].img)
            self.nameImg5.text = area.elements[4].text
            
            self.img6.image = UIImage.init(named: area.elements[5].img)
            self.nameImg6.text = area.elements[5].text
            
            self.img7.image = UIImage.init(named: area.elements[6].img)
            self.nameImg7.text = area.elements[6].text
            
            self.img8.image = UIImage.init(named: area.elements[7].img)
            self.nameImg8.text = area.elements[7].text
            
    
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
