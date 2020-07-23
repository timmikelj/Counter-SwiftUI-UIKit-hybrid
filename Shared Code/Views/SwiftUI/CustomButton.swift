//
//  CustomButton.swift
//  Counter SwiftUI
//
//  Created by Tim Mikelj on 23/07/2020.
//  Copyright © 2020 Tim Mikelj. All rights reserved.
//

import SwiftUI

struct CustomButton: View {
    
    let text: String
    let action: ()->()
    
    var body: some View {
        Button(action: action) {
            Text(text)
                .frame(width: 70, height: 70)
                .font(.largeTitle)
                .background(Color.blue)
                .foregroundColor(.white)
                .clipShape(Circle())
                .padding()
        }
    }
}
