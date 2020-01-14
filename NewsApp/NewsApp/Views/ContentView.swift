//
//  ContentView.swift
//  NewsApp
//
//  Created by saad  aldawsari on 19/12/2019.
//  Copyright © 2019 saad  aldawsari. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    
    //listenr object
    @ObservedObject var networkmanager = NetworkManager()
    
    var body: some View {
        
        NavigationView{
            List(networkmanager.posts) {post in
                NavigationLink(destination: _detailView(url: post.url)) {
                 
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                    
                    
                }
                
            }
            .navigationBarTitle("H4XOR NEWS")
        }
            // reload the data (DID LOAD in UIKit
            .onAppear {
                self.networkmanager.FetchData()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



