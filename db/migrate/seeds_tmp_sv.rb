        <i class="fas fa-exclamation-triangle"></i>
        <%= link_to image_tag(class="fas fa-exclamation-triangle"), match_end_path(match_id: @match.id), :method => :post %>
        user_reports_path(user_id: @user.id)
