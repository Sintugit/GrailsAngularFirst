package com.app42

import grails.converters.JSON
class BroadcastController {

    def index() { }

    def getContent(){
        def arr = []

        def map1 = [id:'102', name:'Copy:'+ new Date() + ' testname102', status:'Running']
        def map2 = [id:'425', name:'Copy:'+ new Date() + ' testname425', status:'Suspended']
        def map3 = [id:'568', name:'Copy:'+ new Date() + ' testname568', status:'Sent']
        def map4 = [id:'574', name:'Copy:'+ new Date() + ' testname574', status:'Sent']
        def map5 = [id:'226', name:'Copy:'+ new Date() + ' testname226', status:'Suspended']


        arr.add(map1)
        arr.add(map2)
        arr.add(map3)
        arr.add(map4)
        arr.add(map5)

        render arr as JSON
    }
}
