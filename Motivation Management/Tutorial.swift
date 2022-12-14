//
//  Tutorial.swift
//  Motivation Management
//
//  Created by Lin Joe on 12/12/2022.
//

import SwiftUI

struct Tutorial: View {
    var body: some View {
        VStack{
            Image("ic-wave")
            Text("Welcome to Motivation Management")
                .bold()
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            Text("Multitudes of Motivation Management Techniques at the Palm of your hand.")
                .padding()
            Spacer()
            NavigationLink(destination: Tutorial2(), label: {Image("Pager")})
            //            Button{
            //                print("Back Tapped")
            //            } label: {
            //                Label("", image: ("Pager"))
            //                .toolbar {
            //                    ToolbarItemGroup(placement: .navigationBarTrailing) {
            //                        Button{
            //                            print("Back Tapped")
            //                        } label: {
            //                            Label("Back", systemImage: "xmark")
        }
    }
}
    struct Tutorial_Previews: PreviewProvider {
        static var previews: some View {
            Tutorial()
        }
    }

