//
//  ViewController.swift
//  EX_MVVM_CRYPTO
//
//  Created by Alican Yilmaz on 27.08.2022.
//

import UIKit

private let reuseIdentifier = "ConversationCell"

class ViewController: UIViewController {
    
    private let tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI(){
        view.backgroundColor = .white
        configureTableView()
    }

    func configureTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .white
        tableView.rowHeight = 40
        tableView.separatorStyle = .singleLine
        tableView.allowsSelection = true
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: reuseIdentifier)
        tableView.tableFooterView = UIView()
        view.addSubview(tableView)
        tableView.frame = view.frame
    }
}

// MARK : UITableViewDataSource

extension ViewController : UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return Book.sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Book.booksFor(section: section).count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
        var content = cell.defaultContentConfiguration()
        let section = Book.sections[indexPath.section]
                if let arr = Book.books[section] {
                    let book = arr[indexPath.row]
                    content.image = book.authType == .single ? UIImage(systemName: "person.fill") : UIImage(systemName: "person.2.fill")
                    content.text = book.title
                    content.secondaryText = book.author
                }
                cell.contentConfiguration = content
                return cell
    }
}


// MARK : UITableViewDelegate

extension ViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}
