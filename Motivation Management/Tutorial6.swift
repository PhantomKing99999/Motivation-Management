//
//  Tutorial6.swift
//  Motivation Management
//
//  Created by Lin Joe on 13/12/2022.
//

import SwiftUI

struct Tutorial6: View {
    var body: some View {
        VStack{
            Image("Profile")
            Text("Here you can manage your profile and images!")
                .bold()
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            Text("Check and manage your profile. You can also check your images!")
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
            NavigationLink(destination: FinalTutorial(), label: {Image("Pager")})
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

struct Tutorial6_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial6()
    }
}
