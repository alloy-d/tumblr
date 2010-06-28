<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<head>
  <link
  href='http://fonts.googleapis.com/css?family=IM+Fell+English:regular,italic'
  rel='stylesheet'
  type='text/css'
  />

  <link
  href='http://fonts.googleapis.com/css?family=IM+Fell+English+SC'
  rel='stylesheet'
  type='text/css'
  />

  <link
  href='http://fonts.googleapis.com/css?family=Crimson+Text'
  rel='stylesheet'
  type='text/css'
  />

  <link
  href='http://fonts.googleapis.com/css?family=Inconsolata'
  rel='stylesheet'
  type='text/css'
  />

  <style type='text/css'>
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
    <div id='theHeader'>
      <h1 id='theTitle'><a href="/" title="Home">{Title}</a></h1>
      <p id='theSubtitle'>{Description}</p>
    </div>

    <div id='theContent'>
      {block:Posts}
        {block:Text} 
          <div class="aPost">
            <h2>{Title}</h2>

            {Body}
          </div>
        {/block:Text}

        {block:Photo}
          <div class="aPost aPhoto">
            <img src="{PhotoURL-500}" alt="{PhotoAlt}" />

            {block:Caption}
              <div class="aCaption">{Caption}</div>
            {/block:Caption}
          </div>
        {/block:Photo}

        {block:Photoset}
          <div class="aPost aPhotoset">
            {Photoset-500}

            {block:Caption}
              <div class="aCaption">{Caption}</div>
            {/block:Caption}
          </div>
        {/block:Photoset}

        {block:Quote}
          <div class="aPost aQuote">
            <blockquote>{Quote}</blockquote>

            {block:Source}
              <div class="aCaption aCitation">{Source}</div>
            {/block:Source}
          </div>
        {/block:Quote}

        {block:Link}
          <div class="aPost aLink">
            <a href="{URL}" class="theLink" {Target}>{Name}</a>

            {block:Description}
              <div class="aCaption">{Description}</div>
            {/block:Description}
          </div>
        {/block:Link}

        {block:Chat}
          <div class="aPost aConversation">
            {block:Title}
              <h2>{Title}</h2>
            {/block:Title}

            <div class="aTranscript">
              {block:Lines}
                {block:Label}
                  <span class="aParticipant">{Label}</span>
                {/block:Label}
                <span class="aLine">{Line}</span>
              {/block:Lines}
            </div>
          </div>
        {/block:Chat}

        {block:Video}
          <div class="aPost aVideo">
            {Video-500}

            {block:Caption}
              <div class="aCaption">{Caption}</div>
            {/block:Caption}
          </div>
        {/block:Video}

        {block:Audio}
          <div class="aPost aSound">
            {AudioPlayerGrey}

            {block:Caption}
              <div class="aCaption">{Caption}</div>
            {/block:Caption}
          </div>
        {/block:Audio}
      {/block:Posts}

      <div id="theNavigation">
        {block:NextPage}
          <a href="{NextPage}">older</a>
          {block:PreviousPage}
            &#x2022;
          {/block:PreviousPage}
        {/block:NextPage}
        {block:PreviousPage}
          <a href="{PreviousPage}">newer</a>
        {/block:PreviousPage}
      </div>
    </div>

    <div id="theFooter">
      <p id="myName">Adam (at alloy-d dot net)</p>
      <p>Nox theme undergoing refinement</p>
    </div>
  </div>
</body>
