//
//  Models.swift
//  BridgeObjCSwift
//
//  Created by Consultant on 1/11/23.
//

import Foundation


struct Post: Identifiable, Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}


struct Response: Codable {
    let info: Info
    let results: [Result]
}

struct Info: Codable {
    let count: Int
    let pages: Int
    let next: String
    let prev: String?
}

struct Result: Codable, Identifiable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let origin: Origin
    let location: Location
    let image: String
    let episodes: [String]
    let url: String
    let created: String
}

struct Origin: Codable {
    let name: String
    let url: String
}

struct Location: Codable {
    let name: String
    let url: String
}

public let moviesURL = "https://rickandmortyapi.com/api/character"
public let postsURL = "https://jsonplaceholder.typicode.com/posts"
