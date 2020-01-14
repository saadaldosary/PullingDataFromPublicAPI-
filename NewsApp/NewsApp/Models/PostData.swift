//
//  PostData.swift
//  NewsApp
//
//  Created by saad  aldawsari on 19/12/2019.
//  Copyright © 2019 saad  aldawsari. All rights reserved.
//

import Foundation

struct Result: Decodable {
    let hits : [Post]
}


struct Post: Decodable, Identifiable{
    
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
    
}
