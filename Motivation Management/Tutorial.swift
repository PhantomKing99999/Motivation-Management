//
//  Tutorial.swift
//  Motivation Management
//
//  Created by Lin Joe on 12/12/2022.
//

import SwiftUI

struct Tutorial: View {
    var body: some View {
        HStack{
            Image("ic-wave")
                .toolbar {
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        Button{
                            print("Back Tapped")
                        } label: {
                            Label("Back", systemImage: "xmark")
                        }
                    }
                }
        }
    }
}

struct Tutorial_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial()
    }
}
