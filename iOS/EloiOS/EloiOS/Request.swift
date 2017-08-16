//
//  Request.swift
//  EloiOS
//
//  Created by Michel de Sousa Carvalho on 13/08/17.
//  Copyright © 2017 Michel de Sousa Carvalho. All rights reserved.
//

import UIKit

class Request {
    func load<A>(resource:Resource<A>, completion: @escaping (A?) -> Void) {
        URLSession.shared.dataTask(with: resource.url as URL) { data, _, _ in
            guard let data = data else {
                completion(nil)
                return
            }
            completion(resource.parse(data))
        }.resume()
    }
}
