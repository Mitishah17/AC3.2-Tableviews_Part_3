//
//  MovieDetailViewController.swift
//  Tableviews_Part_3
//
//  Created by Miti Shah on 9/28/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class MovieDetailViewController: UIViewController {
internal var selectedMovie: Movie!
    
    @IBOutlet weak var moviePosterImageView: UIImageView!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var summaryLabel: UILabel!
    @IBOutlet weak var summaryFullTextLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateViews(for: self.selectedMovie)

        // Do any additional setup after loading the view.
    }

    private func updateViews(for movie: Movie) {
        self.moviePosterImageView.image = UIImage(named: movie.poster)!
        self.genreLabel.text = "Genre: " + movie.genre.capitalized
        self.locationLabel.text = "Locations: " + movie.locations.joined(separator: ", ")
        self.summaryFullTextLabel.text = movie.summary
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
