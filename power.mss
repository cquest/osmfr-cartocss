#power-lines,
#power-lines-lz {
  line-width: 0.5;
  line-color: #777;
  [zoom >= 16] {
    line-width: 0.25;
    line-color: #777;
    [power_type='line'] {
      line-width: 1;
    }
    [line='busbar'],
    [line='bay'] {
      line-width: 0.5;
    }
  }
}

#power-towers,
#power-poles {
  [power_type='tower'] {
    point-file: url('symbols/power_tower_3x3.png');
    [zoom >= 15] {
      point-file: url('symbols/power_tower_5x5.png');
    }
    [zoom >= 17] {
      point-file: url('symbols/power_tower.png');
    }
  }
  point-file: url('symbols/power_pole.png');
}
