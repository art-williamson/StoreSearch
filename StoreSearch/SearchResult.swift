//
//  SearchResult.swift
//  StoreSearch
//
//  Created by Art Williamson on 4/3/19.
//  Copyright © 2019 Art Williamson. All rights reserved.
//

class SearchResult: Codable, CustomStringConvertible {

    var trackName = ""
    var artistName = ""
    var kind = ""
    var trackPrice = 0.0
    var currency = ""
    var artworkUrl60 = ""
    var artworkUrl100 = ""
    var trackViewUrl = ""
    var primaryGenreName = ""

    var name: String {
        return trackName
    }

    var description:String {
        return "Kind: \(kind), Name: \(name), Artist Name: \(artistName)"
    }
}

class ResultArray: Codable {

    var resultCount = 0
    var results = [SearchResult]()
}
