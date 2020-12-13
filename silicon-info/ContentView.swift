//
//  ContentView.swift
//  silicon-info
//
//  Created by Rishabh Goswami on 11/22/20.
//

import SwiftUI

struct ContentView: View {
    let appName: String
    let architecture: String
    let appIcon: NSImage
    let name: String
    let os: String
    @State private var showDetails = false
    

    
    var body: some View {
        
        
        Label {
            Text(appName).font(.title)
        }
        
        icon: {
            Image(nsImage: appIcon)
        }
        .padding()
        VStack {
            Text(architecture).font(.largeTitle).padding()
           
           
        }
        
        Button(action: {
            self.showDetails.toggle()
        }) {
            Text("Version").foregroundColor(Color.white)
        }.background(showDetails ? Color.blue : Color.red)
        
        
        if showDetails {
                        Text(name)
                        Text(os)
                    }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(appName: "", architecture: "", appIcon: NSImage(named: "processor-icon") ?? NSImage(), name: "", os: "")
    }
}
