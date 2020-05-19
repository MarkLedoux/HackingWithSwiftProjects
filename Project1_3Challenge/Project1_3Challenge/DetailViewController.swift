//
//  DetailViewController.swift
//  Project1_3Challenge
//
//  Created by Mark LEDOUX on 16/11/2019.
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

        title = selectedImage?.uppercased()
        navigationItem.largeTitleDisplayMode = .never

        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))

        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }

    @objc func shareTapped() {
        guard let image = imageView.image?.jpegData(compressionQuality: 0.8)
            else {
                print("No image found.")
                return
        }

        let vc = UIActivityViewController(activityItems: [image], applicationActivities: [])
        vc.popoverPresentationController?.barButtonItem
        present(vc, animated: true)
    }

}
