class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # def signin
  #   @signin = signin.all
  #   <%= form_for @signin do |f| %>
  #   <%= f.label :name %>
  #   <%= f.text_field :name %>
  #
  #   <%= f.label :nationality %>
  #   <%= f.text_field :nationality %>
  #
  #   <%= f.label :photo_url %>
  #   <%= f.text_field :photo_url %>
  #
  #   <%= f.submit "Create" %>
  # <% end %>
  #
  #
  # def signup
  #   <%= form_for @signup do |f| %>
  #   <%= f.label :name %>
  #   <%= f.text_field :name %>
  #
  #   <%= f.label :nationality %>
  #   <%= f.text_field :nationality %>
  #
  #   <%= f.label :photo_url %>
  #   <%= f.text_field :photo_url %>
  #
  #   <%= f.submit "Create" %>
  # <% end %>
  # end






end
