//
//  ToDOViewController.swift
//  Models
//
//  Created by DA MAC M1 121 on 2023/05/24.
//

import UIKit

class ToDOViewController: UIViewController {

    var todos = [ToDo]()
    var searchingTodos = [ToDo]()
    var searching = false
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        tableView.dataSource = self
        tableView.delegate = self
        fetchData()
    }
    
    func fetchData() {
        // Perform API request to fetch todos
        // Replace the API endpoint and parsing logic with your own
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/todos") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { [weak self] (data, response, error) in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                // Parse the JSON response into an array of ToDo objects
                let decoder = JSONDecoder()
                self?.todos = try decoder.decode([ToDo].self, from: data)
                
                DispatchQueue.main.async {
                    self?.tableView.reloadData()
                }
            } catch {
                print("Error: \(error)")
            }
        }.resume()
    }
}

extension ToDOViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searching {
            return searchingTodos.count
        } else {
            return todos.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Table View Cell", for: indexPath)
        
        let todo: ToDo
        if searching {
            todo = searchingTodos[indexPath.row]
        } else {
            todo = todos[indexPath.row]
        }
        
        cell.textLabel?.text = "ID: \(todo.id)\nTitle: \(todo.title)"
            cell.textLabel?.numberOfLines = 2
            cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let todo: ToDo
            if searching {
                todo = searchingTodos[indexPath.row]
                searchingTodos.remove(at: indexPath.row)
            } else {
                todo = todos[indexPath.row]
            }
            
            // Perform API request to delete the todo
            // Replace the API endpoint and deletion logic with your own
            
            guard let url = URL(string: "https://jsonplaceholder.typicode.com/todos/\(todo.id)"),
                  let request = createDeleteRequest(url: url) else {
                return
            }
            
            URLSession.shared.dataTask(with: request) { [weak self] (data, response, error) in
                guard let _ = data, error == nil else {
                    return
                }
                
                DispatchQueue.main.async {
                    if let index = self?.todos.firstIndex(where: { $0.id == todo.id }) {
                        self?.todos.remove(at: index)
                    }
                    
                    tableView.deleteRows(at: [indexPath], with: .fade)
                }
            }.resume()
        }
    }
    
    func createDeleteRequest(url: URL) -> URLRequest? {
        var request = URLRequest(url: url)
        request.httpMethod = "DELETE"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        // Add any required headers or authentication tokens to the request
        
        return request
    }
}

extension ToDOViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty {
            searching = false
        } else {
            searchingTodos = todos.filter { $0.title.lowercased().contains(searchText.lowercased()) }
            searching = true
        }
        
        tableView.reloadData()
    }
    
    
}
