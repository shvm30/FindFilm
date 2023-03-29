//
//  VC+DataSource.swift
//  m18
//
//  Created by Владимир on 09.03.2023.
//

import UIKit

extension ViewController: UITableViewDataSource, UISearchBarDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! cell
        let film = array[indexPath.row]
        cell.cellLabel.text = film.title
        cell.desLabel.text = film.description
        getImage(url: film.image, complition: { value in
            dispatchGroup.notify(queue: .main) {
                cell.imageLabel.image = value
            } 
        })
        
        
        return cell
    }
        
        func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
            
            getFilm(request: searchBar.text) { [weak self] value in
                guard let self = self else {return}
                self.array = value
                self.tableView.reloadData()
                
            }
            
        }
        
        
    }
    

