//
//  AppContainer.swift
//  EX_MVVM_MOVIE
//
//  Created by Alican Yilmaz on 30.08.2022.
//

import Foundation

let appContainer = AppContainer()

class AppContainer {
    let service = ClientNetworkService()
    let router = AppRouter()
}
