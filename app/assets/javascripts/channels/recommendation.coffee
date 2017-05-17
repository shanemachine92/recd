jQuery(document).on 'turbolinks:load', ->
  reviews = $('#reviews')
  if reviews.length > 0
    App.global_chat = App.cable.subscriptions.create {
      channel: "recommendationsChannel"
      recommendation_id: reviewss.data('recommendation-id')
    },
    connected: ->
    disconnected: ->
    received: (data) ->
      reviewss.append data['review']
    send_review: (review, recommendation_id) ->
      @perform 'send_review', review: review, recommendation_id: recommendation_id
  $('#new_review').submit (e) ->
    $this = $(this)
    textarea = $this.find('#review_body')
    if $.trim(textarea.val()).length > 1
      App.global_chat.send_review textarea.val(),
      reviews.data('recommendation-id')
      textarea.val('')
    e.preventDefault()
    return false
