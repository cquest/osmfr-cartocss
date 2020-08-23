#interpolation [zoom >= 17] {
    line-color: #888;
    line-width: 1;
    line-dasharray: 2,4;
}

#housenumbers [zoom >= 17] {
  text-name: "[housenumber]";
  text-placement: interior;
  text-margin: 2;
  text-wrap-width: 0;
  text-face-name: @book-fonts;
  text-fill: #585858;
  text-size: 7;
  [entrance!=''] { text-dy: 4; }
  [zoom >= 18] {
    text-size: 9;
  }
  // housename
  name/text-name: "[housename]";
  name/text-placement: interior;
  name/text-wrap-width: 20;
  name/text-face-name: @book-fonts;
  name/text-size: 8;
  name/text-fill: #444;
  [housenumber!=''] { name/text-dy: 8}
  [zoom >= 18] {
    name/text-size: 9;
  }
}

#bano [zoom >= 17] {
  text-name: "[num]";
  text-margin: 2;
  text-wrap-width: 0;
  text-face-name: @oblique-fonts;
  text-fill: #777;
  text-size: 7;
  [zoom >= 18] {
    text-size: 9;
  }
}