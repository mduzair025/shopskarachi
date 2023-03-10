<?php


namespace App\PageBuilder\Addons\IconBox;


use App\Helpers\LanguageHelper;
use App\Helpers\SanitizeInput;
use App\PageBuilder\Fields\IconPicker;
use App\PageBuilder\Fields\Image;
use App\PageBuilder\Fields\Repeater;
use App\PageBuilder\Fields\Select;
use App\PageBuilder\Fields\Slider;
use App\PageBuilder\Fields\Text;
use App\PageBuilder\Fields\Textarea;
use App\PageBuilder\Helpers\RepeaterField;
use App\PageBuilder\Helpers\Traits\RepeaterHelper;
use App\PageBuilder\PageBuilderBase;

class IconBoxStyleOne extends PageBuilderBase
{
    use RepeaterHelper;
    /**
     * preview_image
     * this method must have to implement by all widget to show a preview image at admin panel so that user know about the design which he want to use
     * @since 1.0.0
     * */
    public function preview_image()
    {
        return 'icon-box/01.png';
    }

    /**
     * admin_render
     * this method must have to implement by all widget to render admin panel widget content
     * @since 1.0.0
     * */
    public function admin_render()
    {
        $output = $this->admin_form_before();
        $output .= $this->admin_form_start();
        $output .= $this->default_fields();
        $widget_saved_values = $this->get_settings();


        $output .= Repeater::get([
            'multi_lang' => false,
            'settings' => $widget_saved_values,
            'id' => 'header_eleven',
            'fields' => [
                [
                    'type' => RepeaterField::TEXT,
                    'name' => 'title',
                    'label' => __('Title')
                ],
                [
                    'type' => RepeaterField::TEXTAREA,
                    'name' => 'description',
                    'label' => __('Description')
                ],
                [
                    'type' => RepeaterField::TEXT,
                    'name' => 'url',
                    'label' => __('Url')
                ],
                [
                    'type' => RepeaterField::ICON_PICKER,
                    'name' => 'button_icon',
                    'label' => __('Icon')
                ]
            ]
        ]);

        $output .= Slider::get([
            'name' => 'padding_top',
            'label' => __('Padding Top'),
            'value' => $widget_saved_values['padding_top'] ?? 90,
            'max' => 500,
        ]);
        $output .= Slider::get([
            'name' => 'padding_bottom',
            'label' => __('Padding Bottom'),
            'value' => $widget_saved_values['padding_bottom'] ?? 200,
            'max' => 500,
        ]);
        $output .= $this->admin_form_submit_button();
        $output .= $this->admin_form_end();
        $output .= $this->admin_form_after();

        return $output;
    }

    /**
     * frontend_render
     * this method must have to implement by all widget to render frontend widget content
     * @since 1.0.0
     * */
    public function frontend_render(): string
    {

        $settings = $this->get_settings();
        $padding_top = SanitizeInput::esc_html($settings['padding_top']);
        $padding_bottom = SanitizeInput::esc_html($settings['padding_bottom']);
        $section_title = isset($settings['section_title']) ? SanitizeInput::esc_html($settings['section_title']) : '';
        $section_title_alignment = isset($settings['section_title_alignment']) ? SanitizeInput::esc_html($settings['section_title_alignment']) : '';
        $section_title_markup = '';
        if (!empty($section_title)){
            $section_title_markup = <<<HTML
<div class="row">
    <div class="col-lg-12">
        <div class="section-title course-home margin-bottom-80 {$section_title_alignment}">
            <h2 class="title">{$section_title}</h2>
        </div>
    </div>
</div>
HTML;

        }

        $output = '<div class="featured-area-wrapper" data-padding-top="'.$padding_top.'" data-padding-bottom="'.$padding_bottom.'"><div class="container-fluid"><div class="row"><div class="col-lg-12">';
        $output .= $section_title_markup;

        $all_settings = $this->get_settings();
        $output .= '<ul class="featured-list">';
        $this->args['settings'] = RepeaterField::remove_default_fields($all_settings);

        foreach ($this->args['settings'] as $key => $setting) {
            if (is_array($setting)){
                $this->args['repeater'] = $setting;
                $array_lang_item = $setting[array_key_last($setting)];
                if (!empty($array_lang_item) && is_array($array_lang_item) && count($array_lang_item) > 0) {
                    foreach ($array_lang_item as $index => $value) {
                        $output .= $this->render_slider_markup($index); // for multiple array index
                    }
                } else {
                    $output .= $this->render_slider_markup(); // for only one index of array
                }
            }
        }
        $output .= '</ul></div></div></div></div>';
        return $output;
    }

    /**
     * widget_title
     * this method must have to implement by all widget to register widget title
     * @since 1.0.0
     * */
    public function addon_title()
    {
        return __('Icon Box: 01');
    }

    private function render_slider_markup(int $index = null): string
    {
        $url = $this->get_repeater_field_value('url', $index);
        $url = url($url);
        $button_icon = $this->get_repeater_field_value('button_icon', $index);
        $title = $this->get_repeater_field_value('title', $index);
        $description = $this->get_repeater_field_value('description', $index);
        $key = $index + 1 ;
        return <<<HTML
<li class="single-featured-item">
    <div class="icon-box">
        <i class="{$button_icon} icon"></i>
    </div>
    <div class="content">
        <h4 class="title"><a href="{$url}">{$title}</a></h4>
        <p class="info">{$description}</p>
    </div>
</li>
HTML;

    }


}