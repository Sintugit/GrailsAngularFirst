package com.app42

import grails.converters.JSON
class BroadcastController {

    def index() { }

    def getContent(){
        def arr = []

        def map1 = [id:'102', name:'Copy:'+ new Date() + ' testname102',
        createdOn:new Date()+4, scheduledOn: new Date()+1, tags:['DRIPSMS','DRIPSMS1'],status:'Running']

        def map2 = [id:'425', name:'Copy:'+ new Date() + ' testname425',
        createdOn:new Date()+7, scheduledOn: new Date()+1, status:'Suspended']

        def map3 = [id:'568', name:'Copy:'+ new Date() + ' testname568',
        createdOn:new Date()+2, scheduledOn: new Date()+1, tags:['DRIPSMS'],status:'Sent']

        def map4 = [id:'574', name:'Copy:'+ new Date() + ' testname574',
        createdOn:new Date(), scheduledOn: new Date()+1, status:'Sent']

        def map5 = [id:'226', name:'Copy:'+ new Date() + ' testname226',
        createdOn:new Date()+1, scheduledOn: new Date()+1, status:'Suspended']

        arr.add(map1)
        arr.add(map2)
        arr.add(map3)
        arr.add(map4)
        arr.add(map5)

        render arr as JSON
    }

    def setStatus(){
        def arr = request.JSON
        def status = [status:'success']
        render status as JSON
    }

    def delete(){
        def arr = request.JSON
        def status = [status:'success']
        render arr as JSON
    }
}
