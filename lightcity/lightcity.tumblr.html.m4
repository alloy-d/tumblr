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

    <style type="text/css">
include(`lightcity.css')
include(`lightcity.variable_overrides.css')

{CustomCSS}
    </style>
  </head>
  <body>
    <div id="header">
      <h1 id="blog_title"><a href="/">{Title}</a></h1>
      {block:Description}
        <div id="blog_description"><p>{Description}</p></div>
      {/block:Description}
    </div><!-- header -->

    <div id="content">
      {block:Posts}
        <div class="post">
            <a name="{PostID}"></a>

          {block:Text}
            <div class="post_content text">
              {block:Title}
                <h2 class="post_title">{Title}</h2>
              {/block:Title}

              <div class="post_body">
                <p>
                  {Body}
                </p>
              </div><!-- post_body -->
            </div><!-- post_content -->
          {/block:Text}

          {block:Photo}
            <div class="post_content photo">
              {LinkOpenTag}<img src="{PhotoURL-500}" alt="{PhotoAlt}" />{LinkCloseTag}

              {block:Caption}
                <p class="caption">{Caption}</p>
              {/block:Caption}
            </div><!-- post_content photo -->
          {/block:Photo}

          {block:Quote}
            <div class="post_content quote">
              <blockquote class="{Length}">
                {Quote}
              </blockquote>

              {block:Source}
                <p class="source">{Source}</p>
              {/block:Source}
            </div><!-- post_content quote -->
          {/block:Quote}

          {block:Link}
            <div class="post_content link">
              <h2 class="post_title"><a href="{URL}" {Target}>{Name}</a></h2>

              {block:Description}
                <p class="description">{Description}</p>
              {/block:Description}
            </div><!-- post_content link -->
          {/block:Link}

          {block:Chat}
            <div class="post_content chat">
              {block:Title}
                <h2 class="post_title">{Title}</h2>
              {/block:Title}

              {block:Lines}
                <p class="chat_line chat_line_{Alt}">
                  {block:Label}
                    <span class="label">{Label}</span>
                  {/block:Label}
                  <span class="text">{Line}</span>
                </p>
              {/block:Lines}
            </div><!-- post_content chat -->
          {/block:Chat}

          {block:Audio}
            <div class="post_content audio">
              <div class="audio_container">{AudioPlayerGrey}</div>
              {block:Caption}
                <div class="caption">{Caption}</div>
              {/block:Caption}
            </div><!-- post_content audio -->
          {/block:Audio}

          {block:Video}
            <div class="post_content video">
              <div class="video_container">{Video-500}</div>
              {block:Caption}
                <div class="caption">{Caption}</div>
              {/block:Caption}
            </div><!-- post_content video -->
          {/block:Video}

          {block:RebloggedFrom}
            <span class="hat_tip">
              Found via
              <a href="{ReblogParentURL}">{ReblogParentName}</a>.
            </span>
          {/block:RebloggedFrom}
          <span class="date">
            Posted
            <a href="/day/{Year}/{MonthNumberWithZero}/{DayOfMonthWithZero}/">
                {DayOfWeek}, {Month} {DayOfMonth}{DayOfMonthSuffix}</a>, at
            <a href="{Permalink}">{12Hour}:{Minutes} {CapitalAmPm} (&#8734;)</a>.
          </span>
          {block:Photo}
            {block:HighRes}
              <span class="high_res_link">
                <a href="{PhotoURL-HighRes}">Available in higher resolution.</a>
              </span>
            {/block:HighRes}
          {/block:Photo}
        </div><!-- post -->
      {/block:Posts}
    </div><!-- content -->
    <div id="pagination">
      {block:Pagination}
        {block:PreviousPage}
          <a href="{PreviousPage}">&laquo; newer</a>
          {block:NextPage}
          |
          {/block:NextPage}
        {/block:PreviousPage}
        {block:NextPage}
          <a href="{NextPage}">older &raquo;</a>
        {/block:NextPage}
      {/block:Pagination}

      {block:DayPagination}
        {block:PreviousDayPage}
          <a href="{PreviousDayPage}">&laquo; yesterday</a>
          {block:NextDayPage}
          |
          {/block:NextDayPage}
        {/block:PreviousDayPage}
        {block:NextDayPage}
          <a href="{NextDayPage}">tomorrow &raquo;</a>
        {/block:NextDayPage}
      {/block:DayPagination}

      {block:PermalinkPagination}
        {block:PreviousPost}
          <a href="{PreviousPost}">&laquo; previous</a>
          {block:NextPost}
          |
          {/block:NextPost}
        {/block:PreviousPost}
        {block:NextPost}
          <a href="{NextPost}">next &raquo;</a>
        {/block:NextPost}
      {/block:PermalinkPagination}
    </div><!-- pagination -->
    <div id="attribution">
      <p>Powered by <a href="http://tumblr.com/">Tumblr</a>;
      themed by <a href="http://lloyda2.tumblr.com/">Adam Lloyd</a>.</p>
    </div><!-- attribution -->
  </body>
</html>
