//
//  MovieCastDetailViewController.swift
//  Tableviews_Part_3
//
//  Created by Miti Shah on 9/28/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class MovieCastDetailViewController: UIViewController {
    internal var selectedMovie: Movie!
    
    
    @IBOutlet weak var castTitleLabel: UILabel!
    @IBOutlet weak var castListLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateCast(for: self.selectedMovie)
    }

        private func updateCast(for movie: Movie) {
            self.castTitleLabel.text = "Cast List: "
            
            var nameList = " " // "Mike Myer
            for a in movie.cast {
                nameList += ("-\(a.firstName) \(a.lastName)\n" )

            }
            self.castListLabel.text = nameList
         
}
        
}
        
        
        // Do any additional setup after loading the view.
    

        /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
