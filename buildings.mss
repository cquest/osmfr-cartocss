#buildings [zoom >= 14] {
  polygon-opacity: 0.8;
  polygon-fill: #bdacac;					/* 9%/74% (sat./bright) */
  [zoom = 16] {polygon-fill: #c2b2b2;}	/* 8%/76% */
  [zoom = 17] {polygon-fill: #ccbebe;}	/* 7%/80% */
  [zoom >= 18] {
    polygon-fill: #d1c5c5;				/* 6%/82% */
  }

  [heritage != ''] {
    polygon-fill: #888;
    polygon-opacity: 0.5;
  }

  [building = 'greenhouse'] {
    polygon-fill: #a0b090;
  }

  [building = 'terminal'] {
    polygon-fill: #cc99ff;
    line-color: #330066;
    line-width: 0.3;
  }
  
  [zoom >= 18][wall='no'],
  [zoom >= 18][building='roof'] {
    polygon-opacity: 0.4;
  }
}


#indoor [zoom >= 18] {
	line-color: #220044;
	line-width: 0.2;
}
