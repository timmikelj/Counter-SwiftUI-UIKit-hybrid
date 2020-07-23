//
//  Welcome.swift
//  Counter SwiftUI MVC
//
//  Created by Chloe Mikelj on 23/07/2020.
//  Copyright © 2020 Tim Mikelj. All rights reserved.
//

import SwiftUI

struct Home: View {
    
    @State var mvcCounterViewTag: Int? = nil
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.darkGray]
         UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.darkGray]
        UINavigationBar.appearance().backgroundColor = .offWhite
    }
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color(.offWhite)
                
                NavigationLink(destination: MVCCounterView(), tag: 2, selection: $mvcCounterViewTag) {
                  EmptyView()
                }
                .navigationBarTitle("MVC SwiftUI")
                
                VStack {
                    Spacer()
                    
                    Button(action: {
                        
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
                        self.mvcCounterViewTag = 2
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
            .navigationBarTitle(Text("Counter").foregroundColor(Color(.darkGray)))
            .foregroundColor(Color(.offWhite))
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct Welcome_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
