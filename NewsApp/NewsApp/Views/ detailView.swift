//
//   detailView.swift
//  NewsApp
//
//  Created by saad  aldawsari on 20/12/2019.
//  Copyright © 2019 saad  aldawsari. All rights reserved.
//

import SwiftUI
import WebKit
struct _detailView: View {
   
    let url:String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct _detailView_Previews: PreviewProvider {
    static var previews: some View {
        _detailView(url:"https://www.google.com")
    }
}
 

