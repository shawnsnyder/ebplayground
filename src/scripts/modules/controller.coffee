
define [
    'backbone'
    'underscore'
], (Backbone, _  ) ->
    class controller    
        
        constructor:()->
            console.log('inside') 
        midirecieved:  (msg)->
            console.log(msg)
        update:  ->
            #convert to gsap tick 
            requestAnimFrame(@update);
         
    
    controller 
