//
//  Resources.swift
//  EloiOS
//
//  Created by Michel de Sousa Carvalho on 14/08/17.
//  Copyright © 2017 Michel de Sousa Carvalho. All rights reserved.
//

import Foundation


struct Resource<A> {
    let url: NSURL
    let parse: (Data) -> A?
}


extension Resource {
    init(url: NSURL, parseJSON: @escaping (Any) -> A?) {
        self.url = url
        self.parse = { data in
            let json = try? JSONSerialization.jsonObject(with: data, options: [])
            return json.flatMap(parseJSON)
        }
    }
}
