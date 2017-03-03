package com.app42

import grails.converters.JSON
class MainController {

    def index() { }
    
    def getContent(){
        def arr = []
       
        def map = [:]
        map.id= 1
        map.name= "Jatin"
        map.lastName= "Chauhan"
        map.dob= new Date()
        def map1 = [:]
        map1.id= 2
        map1.name= "John"
        map1.lastName= "Doe"
        map1.dob= new Date()
        def map2 = [:]
        map2.id= 3
        map2.name= "Mark"
        map2.lastName= "Twain"
        map2.dob= new Date()
        
        
        
        arr.add(map)
        arr.add(map1)
        arr.add(map2)
        
        render arr as JSON
    }
}
