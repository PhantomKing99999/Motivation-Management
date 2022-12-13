//
//  Tutorial.swift
//  Motivation Management
//
//  Created by Lin Joe on 12/12/2022.
//

import SwiftUI

struct Tutorial2: View {
    var body: some View {
        VStack{
            Image("Time")
            Text("Here you can view your overall Productivity!")
                .bold()
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            Text("You can check what you spend your time doing and use the information to improve!")
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
            NavigationLink(destination: Tutorial3(), label: {Image("Pager")})
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
    struct Tutorial2_Previews: PreviewProvider {
        static var previews: some View {
            Tutorial()
        }
    }

