//
//  PrepareView.swift
//  Project3
//
//  Created by MacOSX on 21.03.2024.
//

import Foundation
import SwiftUI

struct PrepareView: View {
    
    var body: some View {
        NavigationView {
            NavigationLink("Go to news", destination: ContentView())
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        PrepareView()
    }
}	
