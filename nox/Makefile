all: nox.tumblr.html

nox.css: nox.sass
	sass nox.sass > nox.css

nox.tumblr.html: nox.css nox.tumblr.html.m4
	m4 nox.tumblr.html.m4 > nox.tumblr.html

clean:
	rm -f nox.css
	rm -f nox.tumblr.html

clip: nox.tumblr.html
	xclip < nox.tumblr.html
