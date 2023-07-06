//
//  Feature.swift
//  Practice_TCA
//
//  Created by 서동운 on 7/5/23.
//

import ComposableArchitecture

struct Feature: ReducerProtocol {
    
    struct State: Equatable {
        var number: Int
    }
    
    enum Action: Equatable {
        case decrementButtonTapped
        case incrementButtonTapped
    }
    
    func reduce(into state: inout State, action: Action) -> ComposableArchitecture.EffectTask<Action> {
        switch action {
        case .decrementButtonTapped:
            state.number -= 1
            return .none
        case .incrementButtonTapped:
            state.number += 1
            return .none
        }
    }
}
