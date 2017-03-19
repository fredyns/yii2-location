<?php

namespace fredyns\region\models\form;

use Yii;
use yii\helpers\ArrayHelper;
use fredyns\suite\helpers\StringHelper;
use fredyns\region\models\PartCount;

/**
 * This is the form model class for table "regionPartCount".
 */
class PartCountForm extends PartCount
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
          [['part_of', 'type_id', 'quantity'], 'integer'],
          [['type_id'], 'required'],
          [['part_of'], 'exist', 'skipOnError' => true, 'targetClass' => \fredyns\region\models\RegionArea::className(), 'targetAttribute' => ['part_of' => 'id']],
          [['type_id'], 'exist', 'skipOnError' => true, 'targetClass' => \fredyns\region\models\RegionType::className(), 'targetAttribute' => ['type_id' => 'id']],
        ];
    }

}
