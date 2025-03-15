//
//  ContentView.swift
//  VentiMinecraftLauncher
//
//  Created by YiZhiMCQiu on 2025/3/15.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: TabType = .main
    var body: some View {
        VStack {
            HStack {
                Text("VMCL ")
                    .font(.title)
                    .bold()
                Spacer()
                TabTypeView(selectedTab: $selectedTab)
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
            switch selectedTab {
            case .main: MainTabView()
            case .test: TestTabView()
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

enum TabType: String, CaseIterable, Identifiable {
    case main = "主页"
    case test = "测试"
    
    var id: String { self.rawValue }
}


struct TabTypeView: View {
    @Binding var selectedTab: TabType
    
    var body: some View {
        HStack {
            ForEach(TabType.allCases) { tab in
                RoundedRectangle(cornerRadius: 10)
                    .fill(selectedTab == tab ? Color.wind : Color.clear)
                    .frame(width: 50, height: 30)
                    
                    .overlay(Text(tab.rawValue)
                        .onTapGesture {
                            selectedTab = tab
                        }
                        .foregroundStyle(.black)
                    )
            }
        }
    }
}

extension Color {
    public static let wind = Color(hex: 0x00ffa6)
    init(hex: UInt, opacity: Double = 1.0) {
        let red = Double((hex & 0xFF0000) >> 16) / 255.0
        let green = Double((hex & 0x00FF00) >> 8) / 255.0
        let blue = Double(hex & 0x0000FF) / 255.0
        self.init(red: red, green: green, blue: blue, opacity: opacity)
    }
}
