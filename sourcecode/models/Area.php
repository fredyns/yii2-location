<?php

namespace fredyns\region\models;

use Yii;
use yii\helpers\ArrayHelper;
use fredyns\suite\traits\ModelTool;
use fredyns\suite\traits\ModelBlame;
use fredyns\suite\traits\ModelSoftDelete;
use fredyns\region\models\base\Area as BaseArea;

/**
 * This is the model class for table "regionArea".
 */
class Area extends BaseArea
{

    use ModelTool, ModelBlame, ModelSoftDelete;
    
    const ALIAS_PARTOF = 'partOf';
    const ALIAS_TYPE = 'type';

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
        return ArrayHelper::merge(
             parent::rules(),
             [
                  # custom validation rules
             ]
        );
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPartOf()
    {
        return parent::getPartOf()->alias(static::ALIAS_PARTOF);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getType()
    {
        return parent::getType()->alias(static::ALIAS_TYPE);
    }
}
