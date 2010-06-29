<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

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
      body {
          background-color: {color:Background};
          color: {color:Text};
          font-family: "Verdana", "Gill Sans", sans-serif;
       /* font-family: "Palatino", "Georgia", serif; */
          margin: 0;
          padding: 0;
      }

      div#header {
          margin-top: 60px;
          margin-bottom: 160px;
      }
      div#header h1 {
          background-color: {color:Standout};
          color: {color:Text};
          font-family: "Baskerville", "Palatino", "Georgia", serif;
          font-size: 90px;
          font-weight: 100;
          line-height: 1.2em;
          margin-top: 0;
          margin-bottom: 0; 
          text-align: center;
          text-transform: uppercase;
      }
      div#header h1 a:link, div#header h1 a:visited {
          background-color: transparent;
          border: none;
          color: inherit;
      }
      div#blog_description {
          color: {color:Text};
          font-family: "Baskerville", "Palatino", "Georgia", serif;
          font-size: 28px;
          font-style: italic;
          margin: 0;
          text-align: center;
      }
      /* Comment out the following definitions if you don't like the way
       * I've handled multi-line and multi-paragraph descriptions. */
      div#blog_description p {
          display: inline;
      }
      div#blog_description br {
          display: none;
      }
      /* Stop commenting for long descriptions. */

      div#content {
          border: none;
          line-height: 1.5em;
          margin: auto;
          text-align: justify;
          width: 600px;
      }
      div#content div.post {
          margin-bottom: 120px;
      }

      a.permalink:link, a.permalink:visited {
          border: none;
          text-align: center;
      }
      a.permalink:link:hover, a.permalink:visited:hover {
      }

      span.date, span.hat_tip, span.high_res_link {
          background-color: transparent;
          font-family: "Palatino", "Georgia", serif;
          font-size: 80%;
          font-style: italic;
      }
      span.date a:link, span.date a:visited, span.hat_tip a:link, span.hat_tip a:visited, span.high_res_link a:link, span.high_res_link a:visited {
          border: none;
      }

      div.post_content {
      }

      h2.post_title {
          font-family: "Baskerville", "Palatino", "Georgia", serif;
          font-size: 20pt;
          font-weight: normal;
          line-height: 1.3em;
          margin-top: 0;
          text-align: left;
      }
      h2.post_title a {
          line-height: 1.4em;
      }

      div.post img {
          background-color: {color:Standout};
          clear: both;
          display: block;
          margin: auto;
          padding: 8px;
      }
      div.post a:link img, div.post a:visited img {
          border: none;
      }

      div.post div.caption {
          margin-top: 1.5em;
      }

      div.chat p {
          margin: 0;
      }
      div.chat span.label {
          font-weight: bold;
      }
      div.chat {
          margin-bottom: 16px;
      }

      /* I made the audio player centered by default;
       * comment or delete this next definition to left-align it. */
      div.audio div.audio_container {
          clear: both;
          margin: auto;
          text-align: center;
      }

      div.video div.video_container {
          clear: both;
          margin: auto;
          text-align: center;
      }

      a:link, a:visited {
          border-bottom: 1px solid {color:Text};
          color: {color:Text};
          text-decoration: none;
      }
      a:link:hover, a:visited:hover {
          background-color: {color:Standout};
      }

      p {
          margin: 16px 0;
      }

      blockquote {
          border-left: 3px solid {color:Standout};
          margin-right: 2ex;
          margin-left: 1ex;
          padding-left: 1.5ex;
      }

      code, pre {
          font-family: "Andale Mono", "Monaco", monospace;
      }

      ins {
          font-style: italic;
          text-decoration: none;
      }

      div#pagination {
          text-align: center;
      }
      div#pagination a:link, div#pagination a:visited {
          border-bottom: none;
          font-family: "Palatino", "Georgia", serif;
          font-style: italic;
      }

      div#attribution {
          font-family: "Palatino", "Georgia", serif;
          font-style: italic;
          text-align: center;
      }
      div#attribution p {
          margin: 0.5em 0;
      }

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
