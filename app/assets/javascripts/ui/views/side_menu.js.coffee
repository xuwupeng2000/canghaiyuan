$ ->
  sideMenu = new Ui.Views.SideMenu({ el: $('.js-side-menu') })

class Ui.Views.SideMenu extends Backbone.View

  initialize: ->
    this.innerMenu = this.$el.find('.side-nav')
    this.innerMenu.hide()

  events:
    'click .top-nav-menu-button': 'toggleMenu'
    'clickoutside': 'closeMenu'

  toggleMenu: (event) ->
    this.innerMenu.fadeToggle()

  closeMenu: (event) ->
    this.innerMenu.fadeOut()
