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
                Text("左边栏")
                Spacer()
            }
            .padding()
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
