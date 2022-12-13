//
//  Tutorial3.swift
//  Motivation Management
//
//  Created by Lin Joe on 13/12/2022.
//

import SwiftUI

struct Tutorial3: View {
    var body: some View {
        VStack{
            Image("Calendar")
            Text("Here you can check your calendar!")
                .bold()
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            Text("You can see what time you allocated to do what on a certain day!")
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
            NavigationLink(destination: Tutorial4(), label: {Image("Pager")})
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

struct Tutorial3_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial3()
    }
}
