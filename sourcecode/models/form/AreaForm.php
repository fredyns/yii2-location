<?php

namespace fredyns\region\models\form;

use Yii;
use yii\helpers\ArrayHelper;
use fredyns\suite\helpers\StringHelper;
use fredyns\region\models\Area;

/**
 * This is the form model class for table "regionArea".
 */
class AreaForm extends Area
{

    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return ArrayHelper::merge(
            parent::behaviors(),
            [
                # custom behaviors
            ]
        );
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
          /* filter */
          /* default value */
          /* required */
          /* safe */
          /* field type */
          /* value limitation */
          /* value references */
          [['part_of', 'type_id', 'deleted_at', 'deleted_by'], 'integer'],
          [['latitude', 'longitude'], 'number'],
          [['recordStatus'], 'string'],
          [['registrationNumber'], 'string', 'max' => 32],
          [['phonePrefix'], 'string', 'max' => 16],
          [['part_of'], 'exist', 'skipOnError' => true, 'targetClass' => \fredyns\region\models\RegionArea::className(), 'targetAttribute' => ['part_of' => 'id']],
          [['type_id'], 'exist', 'skipOnError' => true, 'targetClass' => \fredyns\region\models\RegionType::className(), 'targetAttribute' => ['type_id' => 'id']],
          ['recordStatus', 'in', 'range' => [
                    self::RECORDSTATUS_ACTIVE,
                    self::RECORDSTATUS_DELETED,
                ]
            ],
        ];
    }

}
