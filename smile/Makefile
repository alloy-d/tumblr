THEME=smile

all: $(THEME).tumblr.html

$(THEME).tumblr.html: $(THEME).tumblr.html.m4 $(THEME).css
	m4 $(THEME).tumblr.html.m4 > $(THEME).tumblr.html

clip: $(THEME).tumblr.html
	xclip < $(THEME).tumblr.html

