//
//  ContentView.swift
//  VentiMinecraftLauncher
//
//  Created by YiZhiMCQiu on 2025/3/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("VMCL ")
                    .font(.title)
                    .bold()
                Spacer()
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.red)
                    .frame(width: 30, height: 30)
                    .overlay(
                        Image(systemName: "xmark")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 15, height: 15)
                        .foregroundColor(.white)
                    )
                    .shadow(radius: 2)
                    .onTapGesture {
                        NSApplication.shared.terminate(nil)
                    }
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.green)
            )
            HStack {
                VStack {
                    Text("左边栏")
                    Spacer()
                }
                .padding()
                .frame(width: 200)
                .background(.white)
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
                .foregroundStyle(.black)
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

