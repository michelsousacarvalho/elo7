//
//  SobreCollectionViewController.swift
//  EloiOS
//
//  Created by Michel de Sousa Carvalho on 13/08/17.
//  Copyright © 2017 Michel de Sousa Carvalho. All rights reserved.
//

import UIKit




private let reuseIdentifier = "Cell"

class SobreCollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout, ViewControllerDelegate {
    func reloadSobreView(about: About) {
        self.sobre = about
        DispatchQueue.main.async {
            self.collectionView.reloadData()
        }
    }


    @IBOutlet weak var collectionView: UICollectionView!
        
    
    var sobre: About?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let vc = self.parent as? ViewController {
            vc.delegate = self
        }
    }
    
    
    
    
    
    
    
    
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        
//        let vc = self.parent as? ViewController
//        self.sobre = vc
//        
//        
//        
//    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
//        return (self.sobre?.elements.count)!
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        if indexPath.row == 1 {
            return CGSize.init(width: 349, height: 10)
//        } else {
        
//            let size: CGSize = self.sobre?.elements[indexPath.row].description.size(attributes: [NSFontAttributeName: UIFont.systemFont(ofSize: 14.0)])
//            
//            print(size.width + 45.0)
//            return CGSize(width: 349 , height: size.width + 45.0)
            
//            return CGSize.init(width: 349, height: 100)
//        }
    }

     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! SobreCollectionViewCell
    
//        let about = self.sobre?.elements[indexPath.row]
//        
//        cell.title.text = about.title
//        
//        
//        
//        
//        cell.descriptionSobre.attributedText = about.description.html2AttributedString
//        cell.image.image = UIImage.init(named: about.img ?? "")
//        
        // Configure the cell
    
        return cell
    }
    
//    static func htmlToText(encodedString:String) -> String?
//    {
//        let encodedData = encodedString.data(using: String.Encoding.utf8)!
//        do
//        {
//            return try NSAttributedString(data: encodedData, options: [NSDocumentTypeDocumentAttribute:NSHTMLTextDocumentType,NSCharacterEncodingDocumentAttribute:String.Encoding.utf8], documentAttributes: nil).string
//        } catch let error as NSError {
//            print(error.localizedDescription)
//            return nil
//        }
//    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}


