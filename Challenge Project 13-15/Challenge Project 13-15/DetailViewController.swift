//
//  DetailViewController.swift
//  Challenge Project 13-15
//
//  Created by Mark LEDOUX  on 10/01/2020.
//  Copyright © 2020 Mark LEDOUX . All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    var webView: WKWebView!
    var detailItem: Country?
    
    override func loadView() {
        webView = WKWebView()
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let detailItem = detailItem else { return }
        
        let html = """
        <html>
        <head>
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <style> body { font-size: 150%; } </style>
        </head>
        <body>
        \(detailItem.name)
        \(detailItem.name)
        \(detailItem.capital)
        \(detailItem.officialLanguage)
        \(detailItem.mainReligion)
        \(detailItem.headOfState)
        \(detailItem.area)
        \(detailItem.population)
        \(detailItem.currency)
        </body>
        </html>
        """
        webView.loadHTMLString(html, baseURL: nil)
    }

}
