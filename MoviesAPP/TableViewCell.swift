//
//  MovieTableViewCell.swift
//  MoviesAPP
//
//  Created by Onur ÇETİNKAYA on 2.12.2024.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelSummary: UILabel!
    @IBOutlet weak var labelRating: UILabel!
    @IBOutlet weak var imagePoster: UIImageView!
    @IBOutlet weak var labelCategories: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)



    }

    
    func prepare(movie: Movie){
        imagePoster.image = UIImage(named: movie.imageName)
        labelTitle.text = movie.title
        labelSummary.text = movie.summary
        labelRating.text = "⭐️\(movie.rating)/10"
        labelCategories.text = movie.categoriesDescription
        
    }
}
