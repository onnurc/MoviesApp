//
//  MoviesTableViewController.swift
//  MoviesAPP
//
//  Created by Onur ÇETİNKAYA on 2.12.2024.
//

import UIKit

class MoviesTableViewController: UITableViewController {
    
    var movies = [Movie]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadData()
        
        
    }
    
    func loadData(){
        guard let jsonUrl = Bundle.main.url(forResource: "movies", withExtension: "json"), let data = try? Data(contentsOf: jsonUrl) else{
            return
        }
        do {
            movies = try JSONDecoder().decode([Movie].self, from: data)
        } catch  {
            print(error.localizedDescription)
        }
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showDetailsSegue", sender: self)
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell

        let row = movies[indexPath.row]
        cell.prepare(movie: row)
        return cell
    }

    
}
        
        
    
