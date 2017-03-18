
CREATE TABLE IF NOT EXISTS `regionArea` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `part_of` INT(10) UNSIGNED NULL DEFAULT NULL,
  `type_id` INT(10) UNSIGNED NULL DEFAULT NULL,
  `registrationNumber` VARCHAR(32) NULL DEFAULT NULL,
  `phonePrefix` VARCHAR(16) NULL DEFAULT NULL,
  `latitude` FLOAT(11) NULL DEFAULT NULL,
  `longitude` FLOAT(11) NULL DEFAULT NULL,
  `recordStatus` ENUM('active', 'deleted') NOT NULL DEFAULT 'active',
  `created_at` INT(10) UNSIGNED NULL DEFAULT NULL,
  `created_by` INT(10) UNSIGNED NULL DEFAULT NULL,
  `updated_at` INT(10) UNSIGNED NULL DEFAULT NULL,
  `updated_by` INT(10) UNSIGNED NULL DEFAULT NULL,
  `deleted_at` INT(10) UNSIGNED NULL DEFAULT NULL,
  `deleted_by` INT(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `idx_parent` (`part_of` ASC),
  INDEX `idx_type` (`type_id` ASC)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `regionArea_lang` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `area_id` INT(10) UNSIGNED NOT NULL,
  `language` VARCHAR(16) NULL DEFAULT NULL,
  `name` VARCHAR(255) NOT NULL,
  `nickname` VARCHAR(32) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `idx_name` (`area_id` ASC)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `regionType` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `recordStatus` ENUM('active', 'deleted') NOT NULL DEFAULT 'active',
  `created_at` INT(10) UNSIGNED NULL DEFAULT NULL,
  `created_by` INT(10) UNSIGNED NULL DEFAULT NULL,
  `updated_at` INT(10) UNSIGNED NULL DEFAULT NULL,
  `updated_by` INT(10) UNSIGNED NULL DEFAULT NULL,
  `deleted_at` INT(10) UNSIGNED NULL DEFAULT NULL,
  `deleted_by` INT(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `regionType_lang` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_id` INT(10) UNSIGNED NOT NULL,
  `language` VARCHAR(16) NULL DEFAULT NULL,
  `name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `idx_type` (`type_id` ASC)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `regionPartCount` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `part_of` INT(10) UNSIGNED NULL DEFAULT NULL,
  `type_id` INT(10) UNSIGNED NOT NULL,
  `quantity` INT(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  INDEX `idx_parent` (`part_of` ASC),
  INDEX `idx_type` (`type_id` ASC),
  CONSTRAINT `fk_rgnChildrenCount_parent`
    FOREIGN KEY (`part_of`)
    REFERENCES `regionArea` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `regionPostcode` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `number` SMALLINT(5) UNSIGNED NOT NULL,
  `area_id` INT(10) UNSIGNED NOT NULL,
  `recordStatus` ENUM('active', 'deleted') NOT NULL DEFAULT 'active',
  `created_at` INT(10) UNSIGNED NULL DEFAULT NULL,
  `created_by` INT(10) UNSIGNED NULL DEFAULT NULL,
  `updated_at` INT(10) UNSIGNED NULL DEFAULT NULL,
  `updated_by` INT(10) UNSIGNED NULL DEFAULT NULL,
  `deleted_at` INT(10) UNSIGNED NULL DEFAULT NULL,
  `deleted_by` INT(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `idx_number` (`number` ASC),
  INDEX `idx_location` (`area_id` ASC)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;