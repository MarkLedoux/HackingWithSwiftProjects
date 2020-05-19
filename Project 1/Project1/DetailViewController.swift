//
//  DetailViewController.swift
//  Project1
//
//  Created by Mark LEDOUX on 12/10/2019.
//  Copyright © 2019 Mark LEDOUX. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    var selectedPictureNumber = 0
    var totalPictures = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        title = selectedImage
        navigationItem.largeTitleDisplayMode = .never

        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }

        assert(selectedImage != nil)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }

}
