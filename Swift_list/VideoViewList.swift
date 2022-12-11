//
//  ContentView.swift
//  Swift_list
//
//  Created by md imran on 11/12/22.
//

import SwiftUI

struct VideoViewList: View {
    
    var videos: [Video] = VideoList.topTen
    
    var body: some View {
        
        NavigationView {
            List(videos, id: \.id){ item in
                
                NavigationLink(destination: VideoDetailView(videos: item), label: {
                    HStack{
                        Image(item.imageName)
                            .resizable()
                            .cornerRadius(4)
                            .scaledToFit()
                            .frame(height: 70)
                            .padding(.vertical, 5)
                        VStack(alignment: .leading){
                            Text(item.title)
                                .fontWeight(.semibold)
                                .lineLimit(2)
                                .minimumScaleFactor(1)
                            
                            Text(item.uploadDate)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                })
                

                .navigationTitle("Title")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VideoViewList()
    }
}
