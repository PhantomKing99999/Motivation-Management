//
//  FinalTutorial.swift
//  Motivation Management
//
//  Created by Lin Joe on 13/12/2022.
//

import SwiftUI

struct FinalTutorial: View {
    @State private var tutorial = true
    var body: some View {
        VStack{
            Image("ic-wave")
            Text("You finished the walkthrough! You’re ready to begin!")
                .bold()
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            NavigationLink(destination: AppView(), label: {Text("Finish Walkthrough!")})
            .foregroundColor(.white)
            .frame(width: 300, height: 50)
            .background(Color.blue)
            .cornerRadius(10)
            Spacer()
            NavigationLink(destination: EmptyView(), label: {Image("Pager")})
        }
    }
}

struct FinalTutorial_Previews: PreviewProvider {
    static var previews: some View {
        FinalTutorial()
    }
}
