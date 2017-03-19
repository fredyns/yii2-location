<?php

namespace fredyns\region\models\form;

use Yii;
use yii\helpers\ArrayHelper;
use fredyns\suite\helpers\StringHelper;
use fredyns\region\models\Postcode;

/**
 * This is the form model class for table "regionPostcode".
 */
class PostcodeForm extends Postcode
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
          [['number', 'area_id'], 'required'],
          [['number', 'area_id', 'deleted_at', 'deleted_by'], 'integer'],
          [['recordStatus'], 'string'],
          [['area_id'], 'exist', 'skipOnError' => true, 'targetClass' => \fredyns\region\models\RegionArea::className(), 'targetAttribute' => ['area_id' => 'id']],
          ['recordStatus', 'in', 'range' => [
                    self::RECORDSTATUS_ACTIVE,
                    self::RECORDSTATUS_DELETED,
                ]
            ],
        ];
    }

}
