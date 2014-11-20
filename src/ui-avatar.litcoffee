#ui-avatar
Display an avatar to stand in for a user. Much smaller than printing a
name!


    Polymer 'ui-avatar',

##Events

##Attributes and Change Handlers
###name
Yes. The name. This is parsed and turned into initials.

      nameChanged: ->
        initials = ''
        @name.split(' ').forEach (word) ->
          initials += word.slice(0,1)
        @$.text.innerText = initials
        anim = @animate [
          {transform: 'scale(0, 0)', offset: 0}
          {transform: 'scale(1, 1)', offset: 1}
        ], duration: 200,  easing: "0.2s cubic-bezier(0.4, 0.0, 1, 1)"

##Methods
###fireRemove
Hide yourself and fire off a remove event to allow animation before the remove
and the the actual containing element that creates this element by data binding
to finish up the removal.

      fireRemove: ->
        anim = @animate [
          {transform: 'scale(1, 1)', offset: 0}
          {transform: 'scale(0, 0)', offset: 1}
        ], duration: 200,  easing: "0.2s cubic-bezier(0.4, 0.0, 1, 1)"
        anim.onfinish = =>
          @fire 'remove', @templateInstance.model

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
