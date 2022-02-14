//
//  ContentView.swift
//  WordSrcamble
//
//  Created by tung tran on 28/10/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var usedWords = [String]()
    @State private var rootWord = ""
    @State private var newWord = ""
    @State private var animationAmount: CGFloat = 1
    
    var body: some View {
        NavigationView {
            VStack {
                Button("Tap Me"){
                    self.animationAmount += 1
                }
                .padding(50)
                .background(Color.red)
                .foregroundColor(.white)
                .clipShape(Circle())
                .scaleEffect(animationAmount)
                .blur(radius: (animationAmount-1))
                .animation(
                    Animation.easeOut(duration: 1)
//                        .repeatForever(autoreverses: true)
                )
                
                
                TextField("Enter your word", text: $newWord, onCommit: addNewWord)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .autocapitalization(.none)
                
                List(usedWords, id: \.self) {
                    Label($0, systemImage: "\($0.count).circle")
                }
            }
            .navigationBarTitle(rootWord)
        }
    }
    
    func addNewWord() {
        // lowercase and trim the word, to make sure we don't add duplicate words with case differences
        let answer = newWord.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)

        // exit if the remaining string is empty
        guard answer.count > 0 else {
            return
        }

        // extra validation to come

        usedWords.insert(answer, at: 0)
        newWord = ""
    }

    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
