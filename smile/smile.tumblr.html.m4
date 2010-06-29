<!DOCTYPE html>

<!-- 
     Theme copyright 2010 Adam Lloyd (adam@alloy-d.net).
     Licensed under the Artistic License 2.0:
       <http://www.perlfoundation.org/artistic_license_2_0>
  -->

<html>
  <head>
    <title>{Title}{block:PostSummary} - "{PostSummary}"{/block:PostSummary}{block:SearchPage} - search results for "{SearchQuery}"{/block:SearchPage}</title>
    <link rel="shortcut icon" href="{Favicon}" />
    <link rel="alternate" type="application/rss+xml" href="{RSS}" />

    {block:Description}
      <meta name="description" content="{MetaDescription}" />
    {/block:Description}

    <link href='http://fonts.googleapis.com/css?family=Inconsolata' rel='stylesheet'>
    <link href='http://fonts.googleapis.com/css?family=Molengo' rel='stylesheet'>

    <!--[if lt IE 9]>
    <script src='http://html5shiv.googlecode.com/svn/trunk/html5.js'></script>
    <![endif]-->

    <!-- Custom color definitions -->
    <meta name="color:Background" content="#fafafc" />
    <meta name="color:Text" content="#40404a" />
    <meta name="color:Stand out" content="#000000" />
    <meta name="color:Blend in" content="#d2d2d5" />
    <meta name="color:Link text" content="#185878" />

    <!-- Custom boolean definitions -->
    <meta name="if:Show description" content="1"/>
    <meta name="if:Left always goes back in time" content="0"/>
    <meta name="if:Use smile instead of title" content="0"/>
    <meta name="if:Add separators between posts" content="0"/>

    <!-- Custom text definitions -->
    <meta name="text:Contact email address" content=""/>
    <meta name="text:Contact link text" content=""/>
    <meta name="text:Archive link text" content=""/>
    <meta name="text:RSS link text" content=""/>
    <meta name="text:Search box default text" content=""/>
    <meta name="text:Post info cover text" content=""/>

    <!-- Custom image definitions -->
    <meta name="image:Header" content=""/>


    <style type="text/css">
include(`smile.css')
include(`smile.variable_overrides.css')
include(`smile.conditional.css')
    </style>
  </head>
  <body>
    <header>
      <hgroup>
        {block:IfNotHeaderImage}
          {block:IfNotUseSmileInsteadOfTitle}
            <h1><a rel="up" href="/">{Title}</a></h1>
          {/block:IfNotUseSmileInsteadOfTitle}
          {block:IfUseSmileInsteadOfTitle}
            <h1><a rel="up" href="/"
                onmouseover="this.innerHTML='(~_^)';"
                onmouseout="this.innerHTML='(^_^)';">(^_^)</a>
            </h1>
          {/block:IfUseSmileInsteadOfTitle}
        {/block:IfNotHeaderImage}
        {block:IfHeaderImage}
          <a rel="up" href="/">
            <img src="{image:Header}" />
          </a>
        {/block:IfHeaderImage}
        {block:IfShowDescription}
          <h2>{Description}</h2>
        {/block:IfShowDescription}
      </hgroup>
    </header>

    <section id="posts">
      {block:SearchPage}
        <p class="prominent"><a href="/search/{URLSafeSearchQuery}">Here</a>'s what I've got for you:</p>
      {/block:SearchPage}

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

            <p>{Body}</p>
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
            <blockquote class="{Length}">
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
              <p class="description">{Description}</p>
            {/block:Description}
          {/block:Link}

          {block:Chat}
            {block:Title}
              <header>
                <h1>{Title}</h1>
              </header>
            {/block:Title}

            {block:Lines}
              <p class="chat_line">
                {block:Label} 
                  <span class="label">{Label}</span>
                {/block:Label}

                <span class="text">{Line}</span>
              </p>
            {/block:Lines}
          {/block:Chat}

          {block:Audio}
            {AudioPlayerBlack}

            {block:Caption}
              <div class="caption">{Caption}</div>
            {/block:Caption}
          {/block:Audio}

          {block:Video}
            {Video-500}

            {block:Caption}
              <div class="caption">{Caption}</div>
            {/block:Caption}
          {/block:Video}

          {block:Answer}
            <blockquote class="question">{Question}</blockquote>
            <div class="source"><p>{Asker}</p></div>

            <div class="answer">{Answer}</div>
          {/block:Answer}

          <footer class="collapsible">
            {block:IfPostInfoCoverText}
              <span class="symbol">{text:Post info cover text}</span>
              <span class="text_only"> &mdash; </span>
            {/block:IfPostInfoCoverText}
            {block:IfNotPostInfoCoverText}
              <span class="symbol">Meta</span><span class="text_only">-post information
              follows:</span>
            {/block:IfNotPostInfoCoverText}

            <div class="text">
              <p>
                {block:Reblog}
                  <span class="hat_tip">
                    Found via
                    <a href="{ReblogParentURL}">{ReblogParentName}</a>
                  </span>
                {/block:Reblog}
                {block:NotReblog}
                  Posted
                {/block:NotReblog}
                on
                <time datetime="{Year}-{MonthNumberWithZero}-{DayOfMonthWithZero}" pubdate>
                  <a href="/day/{Year}/{MonthNumberWithZero}/{DayOfMonthWithZero}/">
                    {DayOfWeek}, {Month} {DayOfMonth}{DayOfMonthSuffix}
                  </a>
                </time>
                at
                <a href="{Permalink}">{12Hour}:{Minutes} {CapitalAmPm}</a>.

                {block:Photo}
                  {block:HighRes}
                    <a href="{PhotoURL-HighRes}">
                      Available in higher resolution.
                    </a>
                  {/block:HighRes}
                {/block:Photo}
              </p>
              {block:HasTags}
                <ul class="tags">
                  {block:Tags}
                    <li><a rel="tag" href="{TagURL}">{Tag}</a></li>
                  {/block:Tags} 
                </ul>
              {/block:HasTags}
            </div><!-- text -->
          </footer>
            
        </article>
        <hr class="text_only" />
      {/block:Posts}

      {block:SearchPage}
        {block:NoSearchResults}
          <p class="prominent">Nothing! I haven't mentioned <span class="accent">{SearchQuery}</span>.</p>
        {/block:NoSearchResults}
      {/block:SearchPage}

      <nav>
        {block:Pagination}
          {block:IfNotLeftAlwaysGoesBackInTime}
            {block:PreviousPage}
              <a rel="prev" href="{PreviousPage}">&laquo; newer</a>
              {block:NextPage}
              |
              {/block:NextPage}
            {/block:PreviousPage}
            {block:NextPage}
              <a rel="next" href="{NextPage}">older &raquo;</a>
            {/block:NextPage}
          {/block:IfNotLeftAlwaysGoesBackInTime}
          {block:IfLeftAlwaysGoesBackInTime}
            {block:NextPage}
              <a rel="next" href="{NextPage}">&laquo; older</a>
              {block:PreviousPage}
              |
              {/block:PreviousPage}
            {/block:NextPage}
            {block:PreviousPage}
              <a rel="prev" href="{PreviousPage}">newer &raquo;</a>
            {/block:PreviousPage}
          {/block:IfLeftAlwaysGoesBackInTime}
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
    </section><!-- posts -->

    <aside id="sidebar">
      <div id="links">
        <ul>
          <!-- ADD LINKS HERE -->
          <!-- Example:
          <li><a href="http://somesite.com/some/path/">some text</a></li>
          -->
          {block:IfContactEmailAddress}
            <li><a href="mailto:{text:Contact email address}">{block:IfContactLinkText}{text:Contact link text}{/block:IfContactLinkText}{block:IfNotContactLinkText}contact{/block:IfNotContactLinkText}</a></li>
          {/block:IfContactEmailAddress}
          <li><a rel="archives"
            href="/archive">{block:IfArchiveLinkText}{text:Archive link text}{/block:IfArchiveLinkText}{block:IfNotArchiveLinkText}archive{/block:IfNotArchiveLinkText}</a></li>
          <li><a href="{RSS}">{block:IfRSSLinkText}{text:RSS link text}{/block:IfRSSLinkText}{block:IfNotRSSLinkText}rss{/block:IfNotRSSLinkText}</a></li>
        </ul>
      </div><!-- links -->
      <div id="search">
        <form action="/search" method="get">
          {block:IfSearchBoxDefaultText}
          <input type="text" size="7" name="q" value="{text:Search box default text}" id="query" onfocus="this.value='';" onblur="if (this.value=='') this.value='{text:Search box default text}';" /><input type="submit" value="&raquo;" style="display: none;" />
          {/block:IfSearchBoxDefaultText}
          {block:IfNotSearchBoxDefaultText}
          <input type="text" size="7" name="q" value="search" id="query" onfocus="this.value='';" onblur="if (this.value=='') this.value='search';" /><input type="submit" value="&raquo;" style="display: none;" />
          {/block:IfNotSearchBoxDefaultText}
        </form>
      </div><!-- search -->
      <footer>
        <p>
          <a rel="nofollow" href="http://smiletheme.tumblr.com/">
            Smile!
          </a>
          by
          <a rel="nofollow" href="http://text.alloy-d.net/">
            Adam Lloyd
          </a>
        </p>
        <p>
          Powered by
          <a rel="nofollow" href="http://tumblr.com/">Tumblr</a>
        </p>
      </footer>
    </aside><!-- sidebar -->
  </body>
</html>
