#world [zoom <= 9],
#coast-poly [zoom >= 10] {
  image-filters: agg-stack-blur(1,1);
  polygon-fill: @water-color;
}
