//
//  Tutorial4.swift
//  Motivation Management
//
//  Created by Lin Joe on 13/12/2022.
//

import SwiftUI

struct Tutorial4: View {
    var body: some View {
        VStack{
            Image("Diary")
            Text("Here you can check your Diaries!")
                .bold()
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            Text("See what you wrote in the days before, and reflect on your expierences!")
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
            NavigationLink(destination: Tutorial5(), label: {Image("Pager")})
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

struct Tutorial4_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial4()
    }
}
