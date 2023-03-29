//
//  API manager.swift
//  m18
//
//  Created by Владимир on 10.03.2023.
//

import UIKit
let dispatchGroup = DispatchGroup()
 func getFilm (request:String?, complition: @escaping ([Results]) -> Void) {
    var url = "https://imdb-api.com/API/Search/k_7jxsmhhk/"
    if let request = request {
        url += request
        guard let api = URL(string: url) else {return}
        let request = URLRequest(url: api)
        let task = URLSession.shared.dataTask(with: request, completionHandler: {(data, response, error) in
            guard let data = data else {return}
            DispatchQueue.main.async {

                let result = try? JSONDecoder().decode(Request.self, from: data)
                if let result = result {
                    complition(result.results)
                }
            }


        }

        )
        task.resume()
    }
}
func getImage (url:String, complition: @escaping (UIImage) -> Void) {
    
        guard let url = URL(string: url) else {return}
    dispatchGroup.enter()
    DispatchQueue.global(qos: .utility).async {
        let data = try? Data(contentsOf: url)
        guard let data = data else {return}
            guard let image = UIImage(data: data) else {return}
            complition(image)
        dispatchGroup.leave()
        }
    }
    


