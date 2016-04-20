<form action="/posts" method="post">
  <label>Name:</body>
  <input type='text' name="username"></br>
  <label>Post:</label>
  <input type='text' name="body[text]"</br>
  <input type="submit">
</form>

<!-- this -->
<%= form_for @post do |f| %>
<!-- f = form builder -->
  <p>
    <%= f.label :name =>
    <%= f.text_field :name =>
    </p>
  <p>
    <%= f.label :body =>
    <%= f.text_area :body =>
    </p>
  <p>
    <%= f.submit =>
    </p>
