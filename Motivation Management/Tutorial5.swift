//
//  Tutorial5.swift
//  Motivation Management
//
//  Created by Lin Joe on 13/12/2022.
//

import SwiftUI

struct Tutorial5: View {
    var body: some View {
        VStack{
            Image("Entries")
            Text("Here you can write new Diary entries!")
                .bold()
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            Text("After a day of work, write down your thoughts and release your stress here!")
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
            NavigationLink(destination: Tutorial6(), label: {Image("Pager")})
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

struct Tutorial5_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial5()
    }
}
