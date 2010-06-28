<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<!-- 
     Theme copyright 2009 Adam Lloyd.
     Licensed under the Artistic License 2.0:
       <http://www.perlfoundation.org/artistic_license_2_0>
  -->

<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>{Title}{block:PostSummary} - "{PostSummary}"{/block:PostSummary}{block:SearchPage} - search results for "{SearchQuery}"{/block:SearchPage}</title>
    <link rel="shortcut icon" href="{Favicon}" />
    <link rel="alternate" type="application/rss+xml" href="{RSS}" />

    {block:Description}
      <meta name="description" content="{MetaDescription}" />
    {/block:Description}

    <link href='http://fonts.googleapis.com/css?family=Inconsolata' rel='stylesheet' type='text/css'>

    <!-- Custom color definitions -->
    <meta name="color:Background" content="#fafafc" />
    <meta name="color:Text" content="#40404a" />
    <meta name="color:Stand out" content="#000000" />
    <meta name="color:Blend in" content="#d2d2d5" />
    <meta name="color:Link text" content="#185878" />

    <!-- Custom font definitions -->
    <meta name="font:Body" content='"Gill Sans"'/>

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
    </style>
  </head>
  <body>
    <div id="header">
      {block:IfNotHeaderImage}
        {block:IfNotUseSmileInsteadOfTitle}
          <h1><a href="/">{Title}</a></h1>
        {/block:IfNotUseSmileInsteadOfTitle}
        {block:IfUseSmileInsteadOfTitle}
          <h1><a href="/"
              onmouseover="this.innerHTML='(~_^)';"
              onmouseout="this.innerHTML='(^_^)';">(^_^)</a>
          </h1>
        {/block:IfUseSmileInsteadOfTitle}
      {/block:IfNotHeaderImage}
      {block:IfHeaderImage}
        <a href="/">
          <img src="{image:Header}">
        </a>
      {/block:IfHeaderImage}
      {block:IfShowDescription}
      <div id="description">
        <p>{Description}</p>
      </div>
      {/block:IfShowDescription}
    </div><!-- header -->
    <div id="everything">
      <div id="content">
        {block:SearchPage}
          <p class="prominent"><a href="/search/{URLSafeSearchQuery}">Here</a>'s what I've got for you:</p>
        {/block:SearchPage}

        <div id="posts">
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
                    <div class="caption"><p>{Caption}</p></div>
                  {/block:Caption}
                </div><!-- post_content photo -->
              {/block:Photo}

              {block:Quote}
                <div class="post_content quote">
                  <blockquote class="{Length}">
                    {Quote}
                  </blockquote>

                  {block:Source}
                    <div class="source"><p>{Source}</p></div>
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
                        <span class="label user_{UserNumber}">{Label}</span>
                      {/block:Label}
                      <span class="text">{Line}</span>
                    </p>
                  {/block:Lines}
                </div><!-- post_content chat -->
              {/block:Chat}

              {block:Audio}
                <div class="post_content audio">
                  <div class="audio_container">{AudioPlayerBlack}</div>
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

              <div class="post_info collapsible">
                {block:IfPostInfoCoverText}
                  <span class="symbol">{text:Post info cover text}</span><span class="text_only"> - </span>
                {/block:IfPostInfoCoverText}
                {block:IfNotPostInfoCoverText}
                  <span class="symbol">Meta</span><span class="text_only">-post information follows:</span>
                {/block:IfNotPostInfoCoverText}
                <div class="text">
                  {block:Reblog}
                    <span class="hat_tip">
                      Found via
                      <a href="{ReblogParentURL}">{ReblogParentName}</a>
                    </span>
                  {/block:Reblog}
                  {block:NotReblog}
                    Posted
                  {/block:NotReblog}
                  on <a href="/day/{Year}/{MonthNumberWithZero}/{DayOfMonthWithZero}/">{DayOfWeek}, {Month} {DayOfMonth}{DayOfMonthSuffix}</a> at
                  <a href="{Permalink}">{12Hour}:{Minutes} {CapitalAmPm}</a>.
                  {block:Photo}
                    {block:HighRes}
                      <span class="high_res_link">
                        <a href="{PhotoURL-HighRes}">Available in higher resolution.</a>
                      </span>
                    {/block:HighRes}
                  {/block:Photo}
                </div><!-- text -->
              </div><!-- post_info -->
            </div><!-- post -->
            <hr class="text_only" />
          {/block:Posts}
        </div><!-- posts -->
        {block:SearchPage}
          {block:NoSearchResults}
            <p class="prominent">Nothing! I haven't mentioned <span class="accent">{SearchQuery}</span>.</p>
          {/block:NoSearchResults}
        {/block:SearchPage}
        <div id="pagination">
          {block:Pagination}
            {block:IfNotLeftAlwaysGoesBackInTime}
              {block:PreviousPage}
                <a href="{PreviousPage}">&laquo; newer</a>
                {block:NextPage}
                |
                {/block:NextPage}
              {/block:PreviousPage}
              {block:NextPage}
                <a href="{NextPage}">older &raquo;</a>
              {/block:NextPage}
            {/block:IfNotLeftAlwaysGoesBackInTime}
            {block:IfLeftAlwaysGoesBackInTime}
              {block:NextPage}
                <a href="{NextPage}">&laquo; older</a>
                {block:PreviousPage}
                |
                {/block:PreviousPage}
              {/block:NextPage}
              {block:PreviousPage}
                <a href="{PreviousPage}">newer &raquo;</a>
              {/block:PreviousPage}
            {/block:IfLeftAlwaysGoesBackInTime}
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
      </div><!-- content -->
      <div id="static">
        <div id="links">
          <ul>
            <!-- ADD LINKS HERE -->
            <!-- Example:
            <li><a href="http://somesite.com/some/path/">some text</a></li>
            -->
            {block:IfContactEmailAddress}
              <li><a href="mailto:{text:Contact email address}">{block:IfContactLinkText}{text:Contact link text}{/block:IfContactLinkText}{block:IfNotContactLinkText}contact{/block:IfNotContactLinkText}</a></li>
            {/block:IfContactEmailAddress}
            <li><a
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
        <div id="footer">
          <p>Theme by <a href="http://lloyda2.tumblr.com/">Adam Lloyd</a></p>
          <p>Powered by <a href="http://tumblr.com/">Tumblr</a></p>
        </div>
      </div><!-- static -->
    </div><!-- everything -->
  </body>
</html>
