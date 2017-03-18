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

     def getAnalyticContent(){
        def arr = []

        def map1 = [id:'102', name:'Copy:'+ new Date() + ' testname102',sentOn:new Date()+4, tags:['DRIPSMS','DRIPSMS1'],
        sent: 3,sentPer:100, delivered:3,delPer:100,bounce:0,bouncePer:0,uniqueOpen:3,uoPer:100,uniqueClick:0,ucPer:0,unsub:0,
        unsubPer:0,abuse:0,abusePer:0]

        def map2 = [id:'568', name:'Copy:'+ new Date() + ' testname568',sentOn:new Date()+2, tags:['DRIPSMS'],
        sent: 3,sentPer:100, delivered:3,delPer:100,bounce:0,bouncePer:0,uniqueOpen:3,uoPer:100,uniqueClick:2,ucPer:66.67,unsub:0,
        unsubPer:0,abuse:0,abusePer:0]

        arr.add(map1)
        arr.add(map2)

        render arr as JSON
     }

    def setStatus(){
        def arr = request.JSON
        def status = [status:'success']
        render status as JSON
    }

    def view(){
        def arr = request.JSON
        def status = [scheduledFor:new Date()+1, subject:'Open me',from:'Angel Broking feedback@angelbroking.in',
        sentTo:'Demo',status:'success']
        render status as JSON

    }

    def delete(){
        def arr = request.JSON
        def status = [status:'success']
        render status as JSON
    }

    def copy(){
        def arr = request.JSON
        def status = [status:'success']
        render status as JSON
    }

    def broadcastData(){
        def arr = []

        def map1 = [id:'1', broadcastDate: new Date() + 4,primaryKey: 'Dummyjal2', recipient:'jalpa.dinesh@angelbroking.com',
        details: 'sent successfully and viewed']

        def map2 = [id:'2', broadcastDate: new Date() + 2,primaryKey: 'Dummyjalkavi2', recipient:'kavita.agrawal@angelbroking.com',
        details: 'sent successfully and viewed']
        arr.add(map1)
        arr.add(map2)

        render arr as JSON
    }

    def search(){
        def arr = request.JSON
        def data = []
        def map1 = [id:'568', name:'Copy:'+ new Date() + ' testname568',
        createdOn:new Date()+2, scheduledOn: new Date()+1, tags:['DRIPSMS'],status:'Sent']

        def map2 = [id:'574', name:'Copy:'+ new Date() + ' testname574',
        createdOn:new Date(), scheduledOn: new Date()+1, status:'Sent']

        def map3 = [id:'226', name:'Copy:'+ new Date() + ' testname226',
        createdOn:new Date()+1, scheduledOn: new Date()+1, status:'Suspended']

        data.add(map1)
        data.add(map2)
        data.add(map3)

        render data as JSON
    }
}
