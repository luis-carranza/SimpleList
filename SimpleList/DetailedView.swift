//
//  DetailedView.swift
//  SimpleList
//
//  Created by Luis Javier Carranza on 09/11/21.
//

import SwiftUI

struct DetailedView: View {
    
    let city: String
    
    var body: some View {
        Text(city)
    }
}


// PREVIEW PANE ONLY
struct DetailedView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedView(city: "Qro")
    }
}
