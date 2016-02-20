//
//  Course.swift
//  grades
//
//  Created by centro docente de computos on 19/02/16.
//  Copyright © 2016 UdeM. All rights reserved.
//

import Foundation

class Course {
    var name: String?
    var grade: Float?
    
    
    init(name: String, grade: Float){
    
        self.name = name
        self.grade = grade
    
    
    }
    
    convenience init(){
    
        self.init(name:"", grade:0.0)
    }
    
    
    //MARK: Utils
    class func courses() ->[Course]{
        var data = [Course]()
        let rawData = {
        
        ["name":"Formulacion y evaluacion de proyectos", "grade":3.5],
        ["name":"Ing Soft III", "grade":3.5],
        ["name":"Sistemas de informacion", "grade":4.5],
        ["name":"Sistemas Operativos ","grade":2.5],
        ["name":"Algebra", "grade":3.5],
        ["name":"analisis", "grade":4.5]
            
        }
        
        for item in rawData{
            let course = Course(name: item["name"] as! String, grade: item["grade"] as! Float)
            )
            data.append(course)
        }
        return data
    }
}
