//
//  HomeSreenTableViewCell.swift
//  TreeTableViewAndMore
//
//  Created by Thiago Valentim on 22/08/24.
//

import UIKit


    class HomeSreen: UIView {
        
        
        // Criando TableView
        lazy var tableView:UITableView = {
            let tableView = UITableView()
            tableView.translatesAutoresizingMaskIntoConstraints = false
            tableView.backgroundColor = .darkGray
            tableView.separatorStyle = .none
//            tableView.register(HomeSreenTableViewCell.self, forCellReuseIdentifier: HomeSreenTableViewCell.identier)
            return tableView
        }()
        
        init() {
            super.init(frame: .zero)
            backgroundColor = .white
            addElements()
            configConstraints()
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        // MARK: Todos os elementos da tela, serao chamados aqui, para serem add na view
        func addElements() {
            addSubview(tableView)
            
        }
    
        // MARK: Setando as contraints de cada elemento presente na screen
        func configConstraints () {
            NSLayoutConstraint.activate([
                tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
                tableView.leadingAnchor.constraint(equalTo:  leadingAnchor),
                tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
                tableView.bottomAnchor.constraint(equalTo:   bottomAnchor),
            ])
        }
        
    }


