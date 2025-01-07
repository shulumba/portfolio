//
//  SettingsView.swift
//  Todo App
//
//  Created by Igor Shulumba on 27.12.2024.
//

import SwiftUI

struct SettingsView: View {
    // MARK: Properties
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var iconSettings: IconNames
    
    // THEME
    
    let themes: [Theme] = themeData
    @ObservedObject var theme = ThemeSettings()
    @State private var isThemeChanged: Bool = false
    
    // MARK: Body
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 0) {
                // MARK: Form
                Form {
                    // MARK: Section 1
                    
                    Section(header: Text("Choose the app icon")) {
                        Picker(selection: $iconSettings.currentIndex, label: 
                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 8, style: .continuous)
                                    .strokeBorder(Color.primary, lineWidth: 2)
                                Image(systemName: "paintbrush")
                                    .font(.system(size: 28, weight: .regular, design: .default))
                                .foregroundColor(.primary)
                            }
                            .frame(width: 44, height: 44)
                            Text("App Icons".uppercased())
                                .fontWeight(.bold)
                                .foregroundColor(.primary)
                        }
                        ) {
                            ForEach(0..<iconSettings.iconNames.count) { index in
                                HStack {
                                    Image(uiImage: UIImage(named: self.iconSettings.iconNames[index] ?? "Blue") ?? UIImage())
                                        .renderingMode(.original)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
//                                        .scaledToFill()
                                        .frame(width: 44, height: 44)
                                        .cornerRadius(8)
                                      
                                    
                                    Spacer().frame(width: 8)
                                    Text(self.iconSettings.iconNames[index] ?? "Blue")
                                        .frame(alignment: .leading)
                                }
                                .padding(3)
                            }
                        } // Picker
                        .pickerStyle(.navigationLink)
                        .onReceive([self.iconSettings.currentIndex].publisher.first(), perform: { value in
                            let index = self.iconSettings.iconNames.firstIndex(of: UIApplication.shared.alternateIconName) ?? 0
                            if index != value {
                                UIApplication.shared.setAlternateIconName(self.iconSettings.iconNames[value]) { error in
                                    if let error = error {
                                        print(error.localizedDescription)
                                    } else {
                                        print("Success! You have changed the app icon")
                                    }
                                }
                            }
                        })
                    }
                    .padding(.vertical, 3)
                    
                    // MARK: Section 2
                    
                    Section(header: 
                        HStack {
                            Text("Choose the app theme")
                        Image(systemName: "circle.fill")
                            .resizable()
                            .frame(width: 10, height: 10)
                            .foregroundColor(themes[self.theme.themeSettings].themeColor)
                        }) {
                            List {
                                ForEach(themes, id: \.id) { item in
                                    Button(action: {
                                        self.theme.themeSettings = item.id
                                        UserDefaults.standard.set(
                                            self.theme.themeSettings, forKey: "Theme"
                                        )
                                        self.isThemeChanged.toggle()
                                    }) {
                                        HStack {
                                            Image(systemName: "circle.fill")
                                                .foregroundColor(item.themeColor)
                                            Text(item.themeName)
                                        }
                                    }
                                    .accentColor(.primary)
                                }
                            }
                        }
                    .padding(.vertical, 3)
                    .alert(isPresented: $isThemeChanged) {
                        Alert(
                                title: Text("Success!"),
                                message: Text("App has been changed to the\(themes[self.theme.themeSettings].themeName). Now close and restart it!"),
                                dismissButton: .default(Text("Ok"))
                        )
                    }
                    
                    // MARK: Section 3
                    
                    Section(header: Text("Follow us on social media")) {
                        FormRowLinkView(icon: "globe", color: .pink, text: "Website", link: "https://swiftuimasterclass.com")
                        FormRowLinkView(icon: "link", color: .blue, text: "Twitter", link: "https://twitter.com/robertpetras")
                        FormRowLinkView(icon: "play.rectangle", color: .green, text: "Courses", link: "https://www.udemy.com/user/robert-petras")
                    } // Section 3
                    .padding(.vertical, 3)
                    
                   // MARK: Section 4
                    
                    Section(header: Text("About the application")) {
                        FormRowStaticView(icon: "gear", firstText: "Application", secondText: "Todo")
                        FormRowStaticView(icon: "checkmark.seal", firstText: "Compatibility", secondText: "iPhone, iPad")
                        FormRowStaticView(icon: "keyboard", firstText: "Developer", secondText: "John / Jane")
                        FormRowStaticView(icon: "paintbrush", firstText: "Designer", secondText: "Robert Petras")
                        FormRowStaticView(icon: "flag", firstText: "Version", secondText: "1.0.0")
                    }
                    .padding(.vertical, 3)
                }
                .listStyle(GroupedListStyle())
                .environment(\.horizontalSizeClass, .regular)
                
                
                
                // MARK: FOOTER
                
                Text("Copyright All rights reserved. \nBetter Apps ♡ Less Code")
                    .multilineTextAlignment(.center)
                    .font(.footnote)
                    .padding(.top, 6)
                    .padding(.bottom, 8)
                    .foregroundColor(.secondary)
            }
            .navigationBarItems(trailing:
              Button(action: {
                self.presentationMode.wrappedValue.dismiss()
              }) {
                Image(systemName: "xmark")
              }
            )
            .navigationBarTitle("Settings", displayMode: .inline)
            .background(Color("ColorBackground")).edgesIgnoringSafeArea(.bottom)
        }
        .accentColor(themes[self.theme.themeSettings].themeColor)
        .navigationViewStyle(.stack)
    }
}

#Preview {
    SettingsView()
        .environmentObject(IconNames())
}
