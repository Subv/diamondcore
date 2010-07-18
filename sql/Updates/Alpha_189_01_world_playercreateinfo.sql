

ALTER TABLE playercreateinfo
  ADD COLUMN orientation float NOT NULL default '0' AFTER position_z;
