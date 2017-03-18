
ALTER TABLE `regionArea`
ADD CONSTRAINT `fk_rgnName_type`
  FOREIGN KEY (`type_id`)
  REFERENCES `regionType` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_rgnName_parent`
  FOREIGN KEY (`part_of`)
  REFERENCES `regionArea` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `regionArea_lang`
ADD CONSTRAINT `fk_rgnNameLang_name`
  FOREIGN KEY (`area_id`)
  REFERENCES `regionArea` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `regionType_lang`
ADD CONSTRAINT `fk_rgnTypeLang_type`
  FOREIGN KEY (`type_id`)
  REFERENCES `regionType` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `regionPartCount`
ADD CONSTRAINT `fk_rgnChildrenCount_type`
  FOREIGN KEY (`type_id`)
  REFERENCES `regionType` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `regionPostcode`
ADD CONSTRAINT `fk_rgnPostcode_name`
  FOREIGN KEY (`area_id`)
  REFERENCES `regionArea` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
