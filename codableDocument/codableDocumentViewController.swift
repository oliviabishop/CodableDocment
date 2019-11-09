//
//  codableDocumentViewController.swift
//  codableDocument
//
//  Created by Olivia Bishop on 11/8/19.
//  Copyright © 2019 Olivia Bishop. All rights reserved.
//

import UIKit

class codableDocumentViewController: UIViewController {
    
     let jsonFileName = "document1"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
         var jsonData = Data()
               let fileURL = Bundle.main.url(forResource: jsonFileName, withExtension: "json")
               
               do {
                   jsonData = try Data(contentsOf: fileURL!)

               } catch {
                   print(error)
               }
        
         do {
                   let example = try JSONDecoder().decode(Document.self, from: jsonData)
                    
                   print(example)
               } catch {
                   print(error)
               }
           }
        
        
        
        

        // Do any additional setup after loading the view.
    }
    

   


