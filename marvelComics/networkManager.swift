//
//  networkManager.swift
//  marvelComics
//
//  Created by Laura Cristina Alvarez G on 13/01/20.
//  Copyright © 2020 Laura Cristina Alvarez G. All rights reserved.
//
import Alamofire

class networkManager: NSObject {
    func getComics() {
        let URLrequest = "http://gateway.marvel.com/v1/public/comics?ts=1&apikey=b5dd158dd0e856443db7fb726fbc6bc9&hash=80182fcb24c6426319114b9e34eafed6"
        Alamofire.request(URLrequest, encoding: JSONEncoding.default).responseJSON {
            response in
            guard let data = response.result.value as? [String: Any] else {
              print("didn't get todo object as JSON from API")
              return
            }
            print("JSON: \(data)")
        }
    }
}

