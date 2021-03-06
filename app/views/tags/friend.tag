<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
#{if _user.email.equals(_relation.friend.email)}
    ${_relation.user.displayName} - ${_relation.user.email}
    <a href="@{controllers.Application.files(_relation.user.email)}" class="btn btn-primary">
        <span class="glyphicon glyphicon-music" aria-hidden="true"></span>
        &{'waves.music'}
    </a>
    <a href="@{controllers.Application.playlists(_relation.user.email)}" class="btn btn-default">
        <span class="glyphicon glyphicon-list" aria-hidden="true"></span>
        &{'waves.playlists'}
    </a>
    <a href="@{controllers.Application.removeFriend(_relation.user.email)}" class="btn btn-warning" data-toggle="confirmation" data-original-title="" title="&{'waves.confirm'}">
        <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
        &{'waves.deleteFriend'}
    </a>
#{/if}
#{else}
    ${_relation.friend.displayName} - ${_relation.friend.email}
    <a href="@{controllers.Application.files(_relation.friend.email)}" class="btn btn-primary">
        <span class="glyphicon glyphicon-music" aria-hidden="true"></span>
        &{'waves.music'}
    </a>
    <a href="@{controllers.Application.playlists(_relation.friend.email)}" class="btn btn-default">
        <span class="glyphicon glyphicon-list" aria-hidden="true"></span>
        &{'waves.playlists'}
    </a>
    <a href="@{controllers.Application.removeFriend(_relation.friend.email)}" class="btn btn-warning" data-toggle="confirmation" data-original-title="" title="&{'waves.confirm'}">
        <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
        &{'waves.deleteFriend'}
    </a>
#{/else}