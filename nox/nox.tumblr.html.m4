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
      {block:Text} 
        <article>
          <h1>{Title}</h1>

          {Body}
        </article>
      {/block:Text}

      {block:Photo}
        <article class="aPhoto">
          {LinkOpenTag}
            <img src="{PhotoURL-500}" alt="{PhotoAlt}" />
          {LinkCloseTag}

          {block:Caption}
            <div class="aCaption">{Caption}</div>
          {/block:Caption}
        </article>
      {/block:Photo}

      {block:Photoset}
        <article class="aPhotoset">
          {Photoset-500}

          {block:Caption}
            <div class="aCaption">{Caption}</div>
          {/block:Caption}
        </article>
      {/block:Photoset}

      {block:Quote}
        <article class="aQuote">
          <blockquote>{Quote}</blockquote>

          {block:Source}
            <div class="aCaption aCitation">{Source}</div>
          {/block:Source}
        </article>
      {/block:Quote}

      {block:Link}
        <article class="aLink">
          <a href="{URL}" class="theLink" {Target}>{Name}</a>

          {block:Description}
            <div class="aCaption">{Description}</div>
          {/block:Description}
        </article>
      {/block:Link}

      {block:Chat}
        <article class="aConversation">
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
        </article>
      {/block:Chat}

      {block:Video}
        <article class="aVideo">
          {Video-500}

          {block:Caption}
            <div class="aCaption">{Caption}</div>
          {/block:Caption}
        </article>
      {/block:Video}

      {block:Audio}
        <article class="aSound">
          {AudioPlayerGrey}

          {block:Caption}
            <div class="aCaption">{Caption}</div>
          {/block:Caption}
        </article>
      {/block:Audio}
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
