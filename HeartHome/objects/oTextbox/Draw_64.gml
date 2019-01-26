draw_sprite(sTextbox, 0, 960, 300);
draw_set_font(fSketch);
draw_set_color(c_white);
charCount++;
textPart = string_copy(text[page],1,charCount);
draw_text_ext(620, 200, textPart, 60, 700);