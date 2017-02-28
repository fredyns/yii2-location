
ALTER TABLE `locationName`
ADD CONSTRAINT `fk_locationName_type`
  FOREIGN KEY (`locationType_id`)
  REFERENCES `locationType` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `locationName_lang`
ADD CONSTRAINT `fk_locationName_lang_name`
  FOREIGN KEY (`locationName_id`)
  REFERENCES `locationName` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `locationType`
ADD CONSTRAINT `fk_locationType_parent`
  FOREIGN KEY (`parent_id`)
  REFERENCES `locationType` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `locationType_lang`
ADD CONSTRAINT `fk_locationType_lang_type`
  FOREIGN KEY (`locationType_id`)
  REFERENCES `locationType` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `locationNodeCount`
ADD CONSTRAINT `fk_locationNodeCount_parent`
  FOREIGN KEY (`parent_id`)
  REFERENCES `locationName` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_locationNodeCount_type`
  FOREIGN KEY (`locationType_id`)
  REFERENCES `locationType` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `locationPostcode`
ADD CONSTRAINT `fk_locationPostcode_loc`
  FOREIGN KEY (`locationName_id`)
  REFERENCES `locationName` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

