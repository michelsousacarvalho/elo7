//
//  SobreViewController.swift
//  EloiOS
//
//  Created by Michel de Sousa Carvalho on 16/08/17.
//  Copyright © 2017 Michel de Sousa Carvalho. All rights reserved.
//

import UIKit

class SobreViewController: UIViewController, ViewControllerDelegate {



    @IBOutlet weak var title1: UILabel!
    @IBOutlet weak var subtitle1: UILabel!
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var titleImg1: UILabel!
    @IBOutlet weak var subtitleImg1: UILabel!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var titleImg2: UILabel!
    @IBOutlet weak var subtitle2: UILabel!
    @IBOutlet weak var img3: UIImageView!
    @IBOutlet weak var titleImg3: UILabel!
    @IBOutlet weak var subtitle3: UILabel!
    var sobre: About? 
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let vc = self.parent as? ViewController {
            vc.delegate = self
        }
    }
    
    
    func reloadSobreView(about: About) {
        
        DispatchQueue.main.async {
            self.title1.text = about.title
            self.subtitle1.text = about.subtitle

            let element1 = about.elements[0]
            self.img1.image = UIImage.init(named: element1.img)
            self.titleImg1.text = element1.title
            self.subtitleImg1.attributedText = element1.description.style(tags:
                                Style("strong").font(.boldSystemFont(ofSize: 20))).attributedString
            self.subtitleImg1.textAlignment = NSTextAlignment.center
            
            
            
            
            let element2 = about.elements[1]
            self.img2.image = UIImage.init(named: element2.img)
            self.titleImg2.text = element2.title
            self.subtitle2.attributedText = element2.description.style(tags:
                Style("strong").font(.boldSystemFont(ofSize: 20))).attributedString
            self.subtitle2.textAlignment = NSTextAlignment.center
            
            let element3 = about.elements[2]
            self.img3.image = UIImage.init(named: element3.img)
            self.titleImg3.text = element3.title
            self.subtitle3.attributedText = element3.description.style(tags:
                Style("strong").font(.boldSystemFont(ofSize: 20))).attributedString
            self.subtitle3.textAlignment = NSTextAlignment.center
            
        }
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

extension String {
    var html2AttributedString: NSAttributedString? {
        do {
            return try NSAttributedString(data: Data(utf8), options: [NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType, NSCharacterEncodingDocumentAttribute: String.Encoding.utf8.rawValue], documentAttributes: nil)
        } catch {
            print("error:", error)
            return nil
        }
    }
    var html2String: String {
        return html2AttributedString?.string ?? ""
    }
}

extension UILabel{
    var defaultFont: UIFont? {
        get { return self.font }
        set { self.font = newValue }
    }
}
