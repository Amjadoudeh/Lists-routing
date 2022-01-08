//
//  Lists_routingApp.swift
//  Lists-routing
//
//  Created by Amjad Oudeh on 07.01.22.
//

import SwiftUI

@main
struct Lists_routingApp: App {
    // @StateObject is a property wrapper, it's responsible to keep the object alive throughout the life of our app!
    // to keep the editing on sync in different pages
    @StateObject var order = Order()
    
    
    var body: some Scene {
        WindowGroup {
            // after adding the MainView page we have to tell the @Main to show the MainView which has ContentView and OrderView
            MainView()
           // ContentView()
            // the enviromentObject allowed SwiftUI to share data across all the parts of the app 
                .environmentObject(order)
        }
    }
}
