//
//  CounterView.swift
//  Counter SwiftUI
//
//  Created by Tim Mikelj on 23/07/2020.
//  Copyright © 2020 Tim Mikelj. All rights reserved.
//

import SwiftUI

struct CounterView: View {

    @ObservedObject var adapter = CounterViewAdapter()

    var body: some View {

        VStack {
            Spacer()
            Text(adapter.currentCountDisplayString)
                .font(.title)
            Spacer()
            HStack {
                Button(action: {
                    self.adapter.interactor?.decreaseTapped()
                }) {
                    Text("-")
                        .foregroundColor(Color(.darkGray))
                        .font(.largeTitle)
                }
                .buttonStyle(NeumorphicButtonStyle(widthAndHeight: 100))
                Spacer()
                    .frame(width: 50)
                Button(action: {
                    self.adapter.interactor?.increaseTapped()
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
}
