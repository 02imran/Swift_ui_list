//
//  VideoDetailView.swift
//  Swift_list
//
//  Created by md imran on 12/12/22.
//

import SwiftUI

struct VideoDetailView: View {
    
    var videos: Video
    
    var body: some View {
        VStack (spacing: 20) {
            Image(videos.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 230)
                .cornerRadius(15)
            
            Text(videos.title)
                .font(.title2)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20)
            
            HStack (spacing: 40) {
                Label("\(videos.viewCount)", systemImage: "eye.fill")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .padding(.vertical, 10)
                
                Text(videos.uploadDate)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            Text(videos.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Link(destination: videos.url, label: {
                Text("Watch Now")
                    .font(.title2)
                    .frame(width: 200, height: 50)
                    .background(Color(.red))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    
            })
            
            
        }
    }
}

struct VideoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VideoDetailView(videos: VideoList.topTen.first!)
    }
}
