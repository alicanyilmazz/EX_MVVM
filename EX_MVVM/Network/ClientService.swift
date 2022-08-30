//
//  ClientService.swift
//  EX_MVVM_CRYPTO
//
//  Created by Alican Yilmaz on 28.08.2022.
//

import Foundation

protocol ClientNetworkServiceProtocol {
    func movies(completion: @escaping (MusicDTO?, Error?) -> Void)
}

class ClientNetworkService: ClientNetworkServiceProtocol {
    private let moviesURLString = "https://rss.applemarketingtools.com/api/v2/us/music/most-played/10/albums.json"
    
    private let networkService = NetworkService.instance
    
    func movies(completion: @escaping (MusicDTO?, Error?) -> Void) {
        networkService.get(from: moviesURLString, completion: completion)
    }
}
