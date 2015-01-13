#ui-avatar
Display an avatar to stand in for a user. Much smaller than printing a
name!

    require '../node_modules/ui-styles/animations.js'
    Polymer 'ui-avatar',

##Events

##Attributes and Change Handlers
###name
Yes. The name. This is parsed and turned into initials.

      nameChanged: ->
        if @name
          initials = ''
          @name.split(' ').forEach (word) ->
            initials += word.slice(0,1)
          @$.text.innerText = initials
          @zoomIn()

##Methods

##Event Handlers

##Polymer Lifecycle

      created: ->

      ready: ->

      attached: ->

      domReady: ->

      detached: ->

      publish:
        name:
          reflect: true
