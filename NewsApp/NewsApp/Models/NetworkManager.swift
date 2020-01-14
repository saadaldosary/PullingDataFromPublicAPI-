//
//  NetworkManager.swift
//  NewsApp
//
//  Created by saad  aldawsari on 19/12/2019.
//  Copyright © 2019 saad  aldawsari. All rights reserved.
//

import Foundation

// Make the class observable to be seen by the other classes
class NetworkManager: ObservableObject{
    
    
    // published make the posts array accessed by other classes who confirms to the same protocol
    @Published var posts = [Post]()
    
    // Pulling data from the HckerNews api
    func FetchData(){
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with:  url) { (data, response, error) in
                if error == nil {
                    
                    let decoder = JSONDecoder()
                    if let safedata = data{
                        do {
                            let results = try decoder.decode(Result.self, from: safedata)
                            DispatchQueue.main.async {
                                self.posts = results.hits
                            }
                        } catch {
                            print(error)
                        }
                        
                        
                    }
                }
            }
            task.resume()
        }
        
    }
    
}
