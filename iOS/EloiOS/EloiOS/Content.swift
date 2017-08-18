//
//  Content.swift
//  EloiOS
//
//  Created by Michel de Sousa Carvalho on 14/08/17.
//  Copyright © 2017 Michel de Sousa Carvalho. All rights reserved.
//

import Foundation

typealias JSONDictionary = [String: Any]

struct Content {
    let header: Header
    var about: About
    let area: Area
    let footer: Footer
    
}

extension Content {
    init?(dictionary: JSONDictionary) {
        self.header = Header.init(dictionary: dictionary["header"] as! JSONDictionary) ?? Header.init(imageBackground: "", textImage: "")
        self.about = About.init(dict: dictionary["about"] as! JSONDictionary)
        self.area = Area.init(dict: dictionary["area"] as! JSONDictionary)
        self.footer = Footer.init(dict: dictionary["footer"] as! JSONDictionary)
    }
    
    
    
    static let all = Resource<Content>(url: Constant.urlRequest, parseJSON: { json in
        guard let dict = json as? JSONDictionary else { return nil }
        return Content.init(dictionary: dict)
    })
    
    
}




struct Header {
    let imageBackground: String
    let textImage: String
}

extension Header {
    init?(dictionary: JSONDictionary) {
        self.imageBackground = dictionary["imageBackground"] as? String ?? ""
        self.textImage = dictionary["textImage"] as? String ?? ""
    }
}


struct About {
    let title: String
    let subtitle: String
    var elements: [ElementsAbout]
}

extension About {
    init(dict: JSONDictionary) {
        self.title = dict["title"] as! String
        self.subtitle = dict["subtitle"] as! String
        self.elements = []
        if let dictAbout = dict["elements"] as?[JSONDictionary] {
            for each in dictAbout {
                self.elements.append(ElementsAbout.init(dict: each))
            }
        }
    }
}

struct ElementsAbout {
    let title: String
    let img: String
    let description: String
}

extension ElementsAbout {
    init(dict: JSONDictionary) {
        self.title = dict["title"] as! String
        self.img = dict["img"] as! String
        self.description = dict["description"] as! String
    }
}


struct Area {
    let title: String
    var elements: [ElementsArea]
}

extension Area {
    init(dict: JSONDictionary) {
        
        self.title = dict["title"] as! String
        self.elements = []
        if let dictArea = dict["elements"] as? [JSONDictionary] {
            for each in dictArea {
                self.elements.append(ElementsArea.init(dict: each))
            }
        }
    }
}


struct ElementsArea {
    let text: String
    let img: String
}

extension ElementsArea {
    init(dict: JSONDictionary) {
        self.text = dict["text"] as! String
        self.img = dict["img"] as! String
    }
}

struct Footer {
    let title: String
    var elements: [ElementsFooter]
}

extension Footer {
    init(dict: JSONDictionary) {
        self.title = dict["title"] as! String
        self.elements = []
        if let dictArea = dict["elements"] as? [JSONDictionary] {
            for each in dictArea {
                self.elements.append(ElementsFooter.init(dict: each))
            }
        }
    }
}


struct ElementsFooter {
    let img:String
}

extension ElementsFooter {
    init(dict: JSONDictionary) {
        self.img = dict["img"] as! String
    }
}
