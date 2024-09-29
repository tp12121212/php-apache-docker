@php
    $feed = Feed::loadRss('https://threatpost.com/feed');
@endphp
// display title and description as you want
        @foreach ($feed→item as $item)
        <div class="card">
        <div class="card-header">
        <a href="{{ Sitem→link  }}">{{ Sitem→title }}</a>
        </div>
        <div class="card-body">
        {{$item->description}}
        </div>
    </div>
@endforeach 