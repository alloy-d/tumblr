<!DOCTYPE html>
<head>
  <link
  href='http://fonts.googleapis.com/css?family=IM+Fell+English:regular,italic'
  rel='stylesheet'
  />

  <link
  href='http://fonts.googleapis.com/css?family=IM+Fell+English+SC'
  rel='stylesheet'
  />

  <link
  href='http://fonts.googleapis.com/css?family=Crimson+Text'
  rel='stylesheet'
  />

  <link
  href='http://fonts.googleapis.com/css?family=Inconsolata'
  rel='stylesheet'
  />

  <!--[if lt IE 9]>
  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->

  <style>
include(`nox.css')
  </style>

  <title>{Title}</title>
  <link rel="shortcut icon" href="{Favicon}" />
  <link rel="alternate" type="application/rss+xml" href="{RSS}" />
  {block:Description}
    <meta name='description' content='{MetaDescription}' />
  {/block:Description}
</head>
<body>
  <div id='theRealBody'>
    <header>
      <hgroup>
        <h1><a rel="up" href="/" title="Home">{Title}</a></h1>
        <h2>{Description}</h2>
      </hgroup>
    </header>

    {block:Posts}
      <article
        {block:Photo}class="aPhoto"{/block:Photo}
        {block:Photoset}class="aSetOfPhotos"{/block:Photoset}
        {block:Quote}class="aQuote"{/block:Quote}
        {block:Link}class="aLink"{/block:Link}
        {block:Chat}class="aConversation"{/block:Chat}
        {block:Video}class="aVideo"{/block:Video}
        {block:Audio}class="aSound"{/block:Audio}
        {block:Answer}class="anAnswer"{/block:Answer}
      >
        {block:Text} 
          <h1>{Title}</h1>

          {Body}
        {/block:Text}

        {block:Photo}
          {LinkOpenTag}
            <img src="{PhotoURL-500}" alt="{PhotoAlt}" />
          {LinkCloseTag}

          {block:Caption}
            <div class="aCaption">{Caption}</div>
          {/block:Caption}
        {/block:Photo}

        {block:Photoset}
          {Photoset-500}

          {block:Caption}
            <div class="aCaption">{Caption}</div>
          {/block:Caption}
        {/block:Photoset}

        {block:Quote}
          <blockquote>{Quote}</blockquote>

          {block:Source}
            <p class="aQuoteSource">{Source}</p>
          {/block:Source}
        {/block:Quote}

        {block:Link}
          <a href="{URL}" class="theLink" {Target}>{Name}</a>

          {block:Description}
            <div class="aCaption">{Description}</div>
          {/block:Description}
        {/block:Link}

        {block:Chat}
          {block:Title}
            <h1>{Title}</h1>
          {/block:Title}

          <div class="aTranscript">
            {block:Lines}
              {block:Label}
                <span class="aParticipant">{Label}</span>
              {/block:Label}
              <span class="aLine">{Line}</span>
            {/block:Lines}
          </div>
        {/block:Chat}

        {block:Video}
          {Video-500}

          {block:Caption}
            <div class="aCaption">{Caption}</div>
          {/block:Caption}
        {/block:Video}

        {block:Audio}
          {AudioPlayerGrey}

          {block:Caption}
            <div class="aCaption">{Caption}</div>
          {/block:Caption}
        {/block:Audio}

        {block:Answer}
          <blockquote class="aQuestion">{Question}</blockquote>
          <p class="aQuoteSource">{Asker}</p>

          <div class="anAnswer">{Answer}</div>
        {/block:Answer}

        <footer>
          {block:RebloggedFrom}
            <span class="aHatTip">
              via <a href="{ReblogParentURL}">{ReblogParentTitle}</a>
            </span>
          {/block:RebloggedFrom}
          <time datetime="{Year}-{MonthNumberWithZero}-{DayOfMonth}" pubdate>
            <!--{DayOfMonth} {ShortMonth} {Year}--> <a href="{Permalink}">&#x221e;</a>
          </time>
        </footer>
      </article>
    {/block:Posts}

    <nav>
      {block:NextPage}
        <a rel="next" href="{NextPage}">older</a>
        {block:PreviousPage}
          &#x2022;
        {/block:PreviousPage}
      {/block:NextPage}
      {block:PreviousPage}
        <a rel="prev" href="{PreviousPage}">newer</a>
      {/block:PreviousPage}
    </nav>

    <footer>
      <p><a rel="author" href="mailto:adam@alloy-d.net">Adam (at
alloy-d dot net)</a></p>
      <p>Nox theme undergoing refinement</p>
    </footer>
  </div>
</body>
