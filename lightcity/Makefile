THEME=lightcity

PURE_CSS_FILES=$(THEME).variable_overrides.css

all: $(THEME).tumblr.html

$(THEME).css: $(THEME).sass
	sass $(THEME).sass > $(THEME).css

$(THEME).tumblr.html: $(THEME).tumblr.html.m4 $(THEME).css $(PURE_CSS_FILES)
	m4 $(THEME).tumblr.html.m4 > $(THEME).tumblr.html

clip: $(THEME).tumblr.html
	xclip < $(THEME).tumblr.html

clean:
	rm -f $(THEME).tumblr.html
	rm -f $(THEME).css
