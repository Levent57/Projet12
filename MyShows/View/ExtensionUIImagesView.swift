//
//  ExtensionUIImagesView.swift
//  MyShows
//
//  Created by Levent Bostanci on 26/10/2020.
//

import Foundation
import UIKit

extension UIImageView {

    func load(_ size: Int, _ path: String) {
        let urlString = "http://image.tmdb.org/t/p/" + "w\(size)//" + path
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { (d, _, _) in
            DispatchQueue.main.async {
                if let data = d {
                    self.image = UIImage(data: data)
                }
            }
        }.resume()
    }
}