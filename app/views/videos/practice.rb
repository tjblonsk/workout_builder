<form action="/search/videos" method="get">
  <input type="text" name="description">
  <button>search</button>
</form>


form action="/lifts/videos" method="post">
  <label for="description">Description</label></br>
  <input type="text" name="description">

  <select name="lift">
    <% @lifts.each do |lift| %>
  <option value="<%= lift.id %>"><%= lift.name %></option>
    <% end %>
  </select>

  <input type="hidden" name="url" value="<%= video.player_url %>">
  <input type="hidden" name="title" value="<%= video.title %>">
  <button>save</button>
</form>
</li>
</br>
</ul>
<% end %>