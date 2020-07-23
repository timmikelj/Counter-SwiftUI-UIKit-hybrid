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

        VStack {
            Spacer()
            Text(adapter.countDisplayString)
                .font(.title)
            Spacer()
            HStack {
                CustomButton(text: "-") {
                    self.adapter.model?.decreaseTapped()
                }
                CustomButton(text: "+") {
                    self.adapter.model?.increaseTapped()
                }
            }
            Spacer()
        }
    }
}

struct MVCCounterView_Previews: PreviewProvider {
    static var previews: some View {
        MVCCounterView()
    }
}
