<?php

namespace fredyns\region\models;

use Yii;
use yii\helpers\ArrayHelper;
use fredyns\suite\traits\ModelTool;
use fredyns\suite\traits\ModelBlame;
use fredyns\suite\traits\ModelSoftDelete;
use fredyns\region\models\base\AreaLang as BaseAreaLang;

/**
 * This is the model class for table "regionArea_lang".
 */
class AreaLang extends BaseAreaLang
{

    use ModelTool, ModelBlame;
    
    const ALIAS_AREA = 'area';

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
    public function getArea()
    {
        return parent::getArea()->alias(static::ALIAS_AREA);
    }
}
