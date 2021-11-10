//
//  ArticleScreenViewController.swift
//  mdleypunskiyPW5
//
//  Created by Maksim on 10.11.2021.
//

import UIKit

protocol ArticleScreenDisplayLogic: AnyObject {
    
}

class ArticleScreenViewController: UIViewController {
    var interactor: (ArticleScreenBusinessLogic & ArticleScreenDataStore)?
    
    private var tableView = UITableView(frame: .zero)
    
    override func viewDidLoad() {
        setupTableView()
    }
    
    private func setupTableView() {
        view.addSubview(tableView)
        tableView.pinTop(to: view.safeAreaLayoutGuide.topAnchor)
        tableView.pin(to: view, .left, .right, .bottom)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ArticleScreenViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection
                    section: Int) -> Int {
        return 0
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
}

extension ArticleScreenViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

extension ArticleScreenViewController: ArticleScreenDisplayLogic {
    
}
