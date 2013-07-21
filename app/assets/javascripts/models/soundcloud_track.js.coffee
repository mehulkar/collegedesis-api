App.SoundCloudTrack = Ember.Object.extend
  json: null
  id: null
  oEmbed: null
  widget: null
  inDom: false

  load: ->
    url = @get('json.permalink_url')
    SC.oEmbed url, { auto_play: false }, (oEmbed) =>
      @set('oEmbed', oEmbed)

  isLoaded: (-> @get('oEmbed')? ).property('oEmbed')

  embedHtml: (->
    @get('oEmbed.html').replace("http%3A%2F%2F", '//')
  ).property('oEmbed')