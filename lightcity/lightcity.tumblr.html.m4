<!DOCTYPE html>

<!--
     Light City, a Tumblr theme
     
     Copyright 2010 Adam Lloyd (adam@alloy-d.net)

     Licensed under the Artistic License 2.0:
     http://www.perlfoundation.org/artistic_license_2_0
  -->

<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>{Title}{block:PostSummary} - {PostSummary}{/block:PostSummary}{block:SearchPage} - search results for "{SearchQuery}"{/block:SearchPage}</title>
    <link rel="shortcut icon" href="{Favicon}" />
    <link rel="alternate" type="application/rss+xml" href="{RSS}" />

    {block:Description}<meta name="description" content="{MetaDescription}" />{/block:Description}
    <meta name="color:Text" content="#303030" />
    <meta name="color:Standout" content="#F0F0F0" />
    <meta name="color:Background" content="#FFFFFF" />

    <style>
include(`lightcity.css')
include(`lightcity.variable_overrides.css')

{CustomCSS}
    </style>
  </head>
  <body>
    <header>
      <hgroup>
        <h1><a rel="up" href="/">{Title}</a></h1>
        {block:Description}
          <h2>{Description}</h2>
        {/block:Description}
      </hgroup>
    </header>

    <section id="posts">
      {block:Posts}
        <article
          {block:Text}class="text"{/block:Text}
          {block:Photo}class="photo"{/block:Photo}
          {block:Photoset}class="photoset"{/block:Photoset}
          {block:Quote}class="quote"{/block:Quote}
          {block:Link}class="link"{/block:Link}
          {block:Chat}class="chat"{/block:Chat}
          {block:Audio}class="audio"{/block:Audio}
          {block:Video}class="video"{/block:Video}
          {block:Answer}class="answer"{/block:Answer}
        >
          <a name="{PostID}"></a>

          {block:Text}
            {block:Title}
              <header>
                <h1>{Title}</h1>
              </header>
            {/block:Title}

            <p>
              {Body}
            </p>
          {/block:Text}

          {block:Photo}
            {LinkOpenTag}
              <img src="{PhotoURL-500}" alt="{PhotoAlt}" />
            {LinkCloseTag}

            {block:Caption}
              <div class="caption">
                <p>{Caption}</p>
              </div>
            {/block:Caption}
          {/block:Photo}

          {block:Quote}
            <blockquote>
              {Quote}
            </blockquote>

            {block:Source}
              <div class="source">
                <p>{Source}</p>
              </div>
            {/block:Source}
          {/block:Quote}

          {block:Link}
            <header>
              <h1><a href="{URL}" {Target}>{Name}</a></h1>
            </header>

            {block:Description}
              <div class="description">
                <p>{Description}</p>
              </div>
            {/block:Description}
          {/block:Link}

          {block:Chat}
            {block:Title}
              <header>
                <h1>{Title}</h1>
              </header>
            {/block:Title}

            {block:Lines}
              <p class="chat_line chat_line_{Alt}">
                {block:Label}
                  <span class="label">{Label}</span>
                {/block:Label}
                <span class="text">{Line}</span>
              </p>
            {/block:Lines}
          {/block:Chat}

          {block:Audio}
            <div class="audio_container">{AudioPlayerGrey}</div>

            {block:Caption}
              <div class="caption">
                <p>{Caption}</p>
              </div>
            {/block:Caption}
          {/block:Audio}

          {block:Video}
            <div class="video_container">{Video-500}</div>
            
            {block:Caption}
              <div class="caption">
                <p>{Caption}</p>
              </div>
            {/block:Caption}
          {/block:Video}

          {block:Answer}
            <blockquote class="question">{Question}</blockquote>

            <div class="source"><p>{Asker}</p></div>

            <div class="answer"><p>{Answer}</p></div>
          {/block:Answer}

          {block:Date}
            <footer>
              {block:RebloggedFrom}
                <span class="hat_tip">
                  Found via
                  <a href="{ReblogParentURL}">{ReblogParentName}</a>.
                </span>
              {/block:RebloggedFrom}
              <time datetime="{Year}-{MonthNumberWithZero}-"{DayOfMonthWithZero}" pubdate>
                Posted
                <a href="/day/{Year}/{MonthNumberWithZero}/{DayOfMonthWithZero}/">
                    {DayOfWeek}, {Month} {DayOfMonth}{DayOfMonthSuffix}</a>, at
                <a href="{Permalink}">{12Hour}:{Minutes} {CapitalAmPm} (&#8734;)</a>.
              </time>
              {block:Photo}
                {block:HighRes}
                  <span class="high_res_link">
                    <a href="{PhotoURL-HighRes}">Available in higher resolution.</a>
                  </span>
                {/block:HighRes}
              {/block:Photo}
            </footer>
          {/block:Date}
        </article>
      {/block:Posts}

      <nav>
        {block:Pagination}
          {block:PreviousPage}
            <a rel="prev" href="{PreviousPage}">&laquo; newer</a>
            {block:NextPage}
            |
            {/block:NextPage}
          {/block:PreviousPage}
          {block:NextPage}
            <a rel="next" href="{NextPage}">older &raquo;</a>
          {/block:NextPage}
        {/block:Pagination}

        {block:DayPagination}
          {block:PreviousDayPage}
            <a rel="prev" href="{PreviousDayPage}">&laquo; yesterday</a>
            {block:NextDayPage}
            |
            {/block:NextDayPage}
          {/block:PreviousDayPage}
          {block:NextDayPage}
            <a rel="next" href="{NextDayPage}">tomorrow &raquo;</a>
          {/block:NextDayPage}
        {/block:DayPagination}

        {block:PermalinkPagination}
          {block:PreviousPost}
            <a rel="prev" href="{PreviousPost}">&laquo; previous</a>
            {block:NextPost}
            |
            {/block:NextPost}
          {/block:PreviousPost}
          {block:NextPost}
            <a rel="next" href="{NextPost}">next &raquo;</a>
          {/block:NextPost}
        {/block:PermalinkPagination}
      </nav>
    </section>
    <footer>
      <p>Powered by <a rel="nofollow" href="http://tumblr.com/">Tumblr</a>;
      <a rel="nofollow" href="http://www.tumblr.com/theme/554">Light City</a>
      by <a rel="nofollow" href="http://text.alloy-d.net/">Adam Lloyd</a>.</p>
    </footer>
  </body>
</html>
