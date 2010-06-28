THEME=nox

all: $(THEME).tumblr.html

$(THEME).css: $(THEME).sass
	sass $(THEME).sass > $(THEME).css

$(THEME).tumblr.html: $(THEME).css $(THEME).tumblr.html.m4
	m4 $(THEME).tumblr.html.m4 > $(THEME).tumblr.html

clean:
	rm -f $(THEME).css
	rm -f $(THEME).tumblr.html

clip: $(THEME).tumblr.html
	xclip < $(THEME).tumblr.html
