//
//  MainTab.swift
//  VentiMinecraftLauncher
//
//  Created by YiZhiMCQiu on 2025/3/15.
//

import SwiftUI

struct MainTabView : View {
    var body: some View {
        HStack {
            VStack {
                UserView()
                Spacer()
            }
            .frame(width: 200)
            .background(Color.wind)
            .foregroundStyle(.black)
            Spacer()
            HStack {
                VStack {
                    Text("主内容")
                    Spacer()
                }
                Spacer()
            }
            .padding()
            .background(.white)
            .foregroundStyle(.black)
        }
        Spacer()
    }
}

struct UserView : View {
    var body : some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.clear)
            .frame(height: 60)
            .overlay(
                HStack {
                    AsyncImage(url: URL(string: "https://crafthead.net/avatar/038d4a77200d48c7821720de0a4d313a")!) { phase in
                        switch phase {
                        case .success(let image):
                            image
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                                .padding()
                        case .empty:
                            EmptyView()
                        case .failure(let error):
                            Text("无法加载图片, "+error.localizedDescription) // 未能找到使用指定主机名的服务器。
                        @unknown default:
                            EmptyView()
                        }
                    }
                    VStack {
                        Text("YiZhiMCQiu")
                        Text("正版验证")
                    }
                    Spacer()
                }
            )
    }
}
