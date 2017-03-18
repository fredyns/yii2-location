
ALTER TABLE `regionName`
ADD CONSTRAINT `fk_rgnName_type`
  FOREIGN KEY (`locationType_id`)
  REFERENCES `regionType` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_rgnName_parent`
  FOREIGN KEY (`parent_id`)
  REFERENCES `regionName` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `regionName_lang`
ADD CONSTRAINT `fk_rgnNameLang_name`
  FOREIGN KEY (`locationName_id`)
  REFERENCES `regionName` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `regionType_lang`
ADD CONSTRAINT `fk_rgnTypeLang_type`
  FOREIGN KEY (`locationType_id`)
  REFERENCES `regionType` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `regionChildrenCount`
ADD CONSTRAINT `fk_rgnChildrenCount_parent`
  FOREIGN KEY (`parent_id`)
  REFERENCES `regionName` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_rgnChildrenCount_type`
  FOREIGN KEY (`locationType_id`)
  REFERENCES `regionType` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `regionPostcode`
ADD CONSTRAINT `fk_rgnPostcode_name`
  FOREIGN KEY (`locationName_id`)
  REFERENCES `regionName` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
