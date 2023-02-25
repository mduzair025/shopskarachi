@extends('frontend.frontend-page-master')
@section('site-title')
    {{get_static_option('about_page_name')}}
@endsection
@section('page-title')
    {{get_static_option('about_page_name')}}
@endsection
@section('page-meta-data')
    <meta name="description" content="{{get_static_option('about_page_meta_description')}}">
    <meta name="tags" content="{{get_static_option('about_page__meta_tags')}}">
@endsection
@section('content')
    {!! \App\PageBuilder\PageBuilderSetup::render_frontend_pagebuilder_content_by_location('aboutpage') !!}
@endsection