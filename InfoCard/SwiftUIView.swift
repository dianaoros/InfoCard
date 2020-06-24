//
//  SwiftUIView.swift
//  InfoCard
//
//  Created by Diana Oros on 6/23/20.
//  Copyright © 2020 Diana Oros. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(HStack{
                Image(systemName: imageName)
                    .foregroundColor(Color(red: 0.45, green: 0.73, blue: 1.00))
                Text(text)
            })
            .padding(.all)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
