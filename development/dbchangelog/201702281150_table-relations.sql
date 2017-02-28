
ALTER TABLE `regionName`
ADD CONSTRAINT `fk_regionName_type`
  FOREIGN KEY (`regionType_id`)
  REFERENCES `regionType` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `regionName_lang`
ADD CONSTRAINT `fk_regionName_lang_name`
  FOREIGN KEY (`regionName_id`)
  REFERENCES `regionName` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `regionType`
ADD CONSTRAINT `fk_regionType_parent`
  FOREIGN KEY (`parent_id`)
  REFERENCES `regionType` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `regionType_lang`
ADD CONSTRAINT `fk_regionType_lang_type`
  FOREIGN KEY (`regionType_id`)
  REFERENCES `regionType` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `regionNodeCount`
ADD CONSTRAINT `fk_regionNodeCount_parent`
  FOREIGN KEY (`parent_id`)
  REFERENCES `regionName` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_regionNodeCount_type`
  FOREIGN KEY (`regionType_id`)
  REFERENCES `regionType` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `regionPostcode`
ADD CONSTRAINT `fk_regionPostcode_rgn`
  FOREIGN KEY (`regionName_id`)
  REFERENCES `regionName` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

