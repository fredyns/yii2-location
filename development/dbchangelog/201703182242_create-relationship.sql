
ALTER TABLE `rgn_area`
ADD CONSTRAINT `fkRgn_name_type`
  FOREIGN KEY (`type_id`)
  REFERENCES `rgn_type` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fkRgn_name_partof`
  FOREIGN KEY (`part_of`)
  REFERENCES `rgn_area` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `rgn_area_lang`
ADD CONSTRAINT `fkRgn_nameLang_name`
  FOREIGN KEY (`area_id`)
  REFERENCES `rgn_area` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `rgn_type_lang`
ADD CONSTRAINT `fkRgn_typeLang_type`
  FOREIGN KEY (`type_id`)
  REFERENCES `rgn_type` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `rgn_partCount`
ADD CONSTRAINT `fkRgn_partCount_type`
  FOREIGN KEY (`type_id`)
  REFERENCES `rgn_type` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fkRgn_partCount_partof`
  FOREIGN KEY (`part_of`)
  REFERENCES `rgn_area` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `rgn_postcode`
ADD CONSTRAINT `fkRgn_postcode_area`
  FOREIGN KEY (`area_id`)
  REFERENCES `rgn_area` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
