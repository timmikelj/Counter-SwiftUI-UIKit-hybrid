//
//  Welcome.swift
//  Counter SwiftUI MVC
//
//  Created by Chloe Mikelj on 23/07/2020.
//  Copyright © 2020 Tim Mikelj. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    @State private var navigationTag: Int? = nil
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.darkGray]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.darkGray]
        UINavigationBar.appearance().backgroundColor = .offWhite
        UINavigationBar.appearance().tintColor = .darkGray
    }
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                #if CleanSwiftTarget
                NavigationLink(destination: CounterView(), tag: 2, selection: $navigationTag) {}
                NavigationLink(destination: CounterViewControllerWrapper(), tag: 1, selection: $navigationTag) {}
                #else
                NavigationLink(destination: MVCCounterView(), tag: 2, selection: $navigationTag) {}
                NavigationLink(destination: MVCCounterViewControllerWrapper(), tag: 1, selection: $navigationTag) {}
                #endif
                
                Color(.offWhite)
                
                VStack {
                    Spacer()
                    
                    Button(action: {
                        self.navigationTag = 1
                        
                    }) {
                        Text("UIKit")
                            .foregroundColor(Color(.darkGray))
                            .font(.title)
                            .fontWeight(.semibold)
                    }
                    .buttonStyle(NeumorphicButtonStyle(widthAndHeight: 160))
                    
                    Spacer()
                        .frame(height: 40)
                    
                    
                    Button(action: {
                        self.navigationTag = 2
                    }) {
                        Text("SwiftUI")
                            .foregroundColor(Color(.darkGray))
                            .font(.title)
                            .fontWeight(.semibold)
                    }
                    .buttonStyle(NeumorphicButtonStyle(widthAndHeight: 160))
                    
                    Spacer()
                }
            }
            .navigationBarTitle("Home")
            .foregroundColor(Color(.offWhite))
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct Welcome_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
