//
//  ViewModel.swift
//  m18
//
//  Created by Владимир on 10.03.2023.
//

import Foundation

struct Request: Decodable {
    var searchType: String
    var expression: String
    var results:[Results]
    var errorMessage: String
}

struct Results: Decodable {
    var id: String
    var resultType: String
    var image: String
    var title: String
    var description: String
}
