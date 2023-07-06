//
//  ContentView.swift
//  Practice_TCA
//
//  Created by 서동운 on 7/5/23.
//

import SwiftUI
import ComposableArchitecture

struct ContentView: View {
    let store: StoreOf<Feature>
    
    var body: some View {
        WithViewStore(store) { viewStore in
            HStack {
                Button("-") {
                    viewStore.send(.decrementButtonTapped)
                }
                .foregroundColor(.cyan)
                .buttonStyle(.bordered)
                Text("\(viewStore.state.number)")
                    .padding(20)
                    .background {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.black.opacity(0.3))
                            .frame(height: 40)
                    }
                Button("+") {
                    viewStore.send(.incrementButtonTapped)
                }
                .foregroundColor(.cyan)
                .buttonStyle(.bordered)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(store: Store(initialState: Feature.State(number: 0), reducer: Feature()))
    }
}
