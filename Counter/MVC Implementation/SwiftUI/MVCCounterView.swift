//
//  MVCCounterView.swift
//  Counter SwiftUI
//
//  Created by Tim Mikelj on 22/07/2020.
//  Copyright © 2020 Tim Mikelj. All rights reserved.
//

import SwiftUI

struct MVCCounterView: View {
    
    @ObservedObject var adapter = MVCCounterViewAdapter()
    
    var body: some View {
        
        ZStack {
            
            Color(.offWhite)
            
            VStack {
                
                Spacer()
                Text(adapter.countDisplayString)
                    .font(.title)
                    .foregroundColor(Color(.darkGray))
                Spacer()
                HStack {
                    Button(action: {
                        self.adapter.model?.decreaseTapped()
                    }) {
                        Text("-")
                            .foregroundColor(Color(.darkGray))
                            .font(.largeTitle)
                    }
                    .buttonStyle(NeumorphicButtonStyle(widthAndHeight: 100))
                    Spacer()
                        .frame(width: 50)
                    Button(action: {
                        self.adapter.model?.increaseTapped()
                    }) {
                        Text("+")
                            .foregroundColor(Color(.darkGray))
                            .font(.largeTitle)
                    }
                    .buttonStyle(NeumorphicButtonStyle(widthAndHeight: 100))
                }
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct MVCCounterView_Previews: PreviewProvider {
    static var previews: some View {
        MVCCounterView()
    }
}
