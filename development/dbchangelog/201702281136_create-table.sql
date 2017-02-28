
CREATE TABLE IF NOT EXISTS `regionName` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` INT(10) UNSIGNED NULL DEFAULT NULL,
  `regionType_id` INT(10) UNSIGNED NULL DEFAULT NULL,
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
  INDEX `idx_parent` (`parent_id` ASC),
  INDEX `idx_type` (`regionType_id` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `regionName_lang` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `regionName_id` INT(10) UNSIGNED NOT NULL,
  `language` VARCHAR(16) NULL DEFAULT NULL,
  `name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `idx_name` (`regionName_id` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `regionType` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` INT(10) UNSIGNED NULL DEFAULT NULL,
  `recordStatus` ENUM('active', 'deleted') NOT NULL DEFAULT 'active',
  `created_at` INT(10) UNSIGNED NULL DEFAULT NULL,
  `created_by` INT(10) UNSIGNED NULL DEFAULT NULL,
  `updated_at` INT(10) UNSIGNED NULL DEFAULT NULL,
  `updated_by` INT(10) UNSIGNED NULL DEFAULT NULL,
  `deleted_at` INT(10) UNSIGNED NULL DEFAULT NULL,
  `deleted_by` INT(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `idx_parent` (`parent_id` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `regionType_lang` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `regionType_id` INT(10) UNSIGNED NOT NULL,
  `language` VARCHAR(16) NULL DEFAULT NULL,
  `name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `idx_type` (`regionType_id` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `regionNodeCount` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` INT(10) UNSIGNED NULL DEFAULT NULL,
  `regionType_id` INT(10) UNSIGNED NOT NULL,
  `qty` INT(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  INDEX `idx_parent` (`parent_id` ASC),
  INDEX `idx_type` (`regionType_id` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `regionPostcode` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `number` SMALLINT(5) UNSIGNED NOT NULL,
  `regionName_id` INT(10) UNSIGNED NOT NULL,
  `recordStatus` ENUM('active', 'deleted') NOT NULL DEFAULT 'active',
  `created_at` INT(10) UNSIGNED NULL DEFAULT NULL,
  `created_by` INT(10) UNSIGNED NULL DEFAULT NULL,
  `updated_at` INT(10) UNSIGNED NULL DEFAULT NULL,
  `updated_by` INT(10) UNSIGNED NULL DEFAULT NULL,
  `deleted_at` INT(10) UNSIGNED NULL DEFAULT NULL,
  `deleted_by` INT(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `idx_number` (`number` ASC),
  INDEX `idx_region` (`regionName_id` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
