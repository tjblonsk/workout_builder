<%= form_for @video do |f| %>
  <%= f.label :name %>
  <%= f.text_field :name %>
  <%= f.label :description %>
  <%= f.text_field :description %>
  <%= f.collection_select :lift_id, Lift.all, :id, :name %>
<% end %>

<%= form_tag('/lifts/videos', method: 'post') do %>
  <%= text_field_tag(:query, nil ,:placeholder => 'Search for a student') %>
  <%= submit_tag 'Search' %>
<% end %>