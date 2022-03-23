//
//  JsonViewController.swift
//  Json
//
//  Created by Asnuva Tanvin on 7/11/21.
//

//import UIKit

//
//  about.swift
//  Json
//
//  Created by Asnuva Tanvin on 7/11/21.
//

import Foundation
import UIKit

struct Post: Codable {
    let name: String
    let id: String
    let dept: String
    let mail: String
}



class JsonViewController: UIViewController {
    
   
    @IBOutlet weak var about: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //print("hfjkwhfgwu")
        
        /*let jsonUrlString = "https://mocki.io/v1/bd804b41-497b-43f0-8dc6-e0fa6210612e"
        
        guard let url = URL(string: jsonUrlString) else {return}
        URLSession.shared.dataTask(with: url) {( data, response, err) in
            guard let pdata = data else { return}
            do{
                let app = try JSONDecoder().decode(About.self, from: pdata)
                print(app.name)
            }catch let jsonError{
                print("error in parsing",jsonError)
            }
        }.resume() */
        
        let url = URL(string: "https://mocki.io/v1/fe34e97d-eec2-4cc4-83d8-917cd81fdf97")!
        let task = URLSession.shared.dataTask(with: url ) { data , response, error in
            
            let decoder = JSONDecoder()
            
            if let data = data {
                do {
                    let posts = try decoder.decode([Post].self, from: data)
                    
                    
                    self.about.text = "Name: " + posts[0].name + "\n" +
                    "Id: " + posts[0].id + "\n" + "Dept. : " + posts[0].dept + "\n" + "Email: " + posts[0].mail + "\n\n" +
                    "Name: " + posts[1].name + "\n" +
                    "Id: " + posts[1].id + "\n" + "Dept. : " + posts[1].dept + "\n" + "Email: " + posts[1].mail + "\n\n" +
                    "Name: " + posts[2].name + "\n" +
                    "Id: " + posts[2].id + "\n" + "Dept. : " + posts[2].dept + "\n" + "Email: " + posts[2].mail + "\n\n" +
                    "Name: " + posts[3].name + "\n" +
                    "Id: " + posts[3].id + "\n" + "Dept. : " + posts[3].dept + "\n" + "Email: " + posts[3].mail + "\n\n" +
                    "Name: " + posts[4].name + "\n" +
                    "Id: " + posts[4].id + "\n" + "Dept. : " + posts[4].dept + "\n" + "Email: " + posts[4].mail + "\n\n" +
                    "Name: " + posts[5].name + "\n" +
                    "Id: " + posts[5].id + "\n" + "Dept. : " + posts[5].dept + "\n" + "Email: " + posts[5].mail + "\n\n"
                    
                    
                } catch {
                    print(error)
                }
                
                
            }
        }
        task.resume()
        
    }
   
        
    }

        

