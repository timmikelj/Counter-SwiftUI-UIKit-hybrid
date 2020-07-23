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
                CustomButton(text: "-") {
                    self.adapter.interactor?.decreaseTapped()
                }
                CustomButton(text: "+") {
                    self.adapter.interactor?.increaseTapped()
                }
            }
            Spacer()
        }
    }
}
