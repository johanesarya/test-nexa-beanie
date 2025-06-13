<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Beanie Coffee Shop</title>
    <link rel="icon" href="{{ asset('images/logo-2.png') }}" type="image/x-icon">

    <script src="https://code.iconify.design/2/2.0.0/iconify.min.js"></script>
    @vite('resources/css/app.css')
</head>

<body class="bg-soft-white p-10 pb-0 mt-8">
    @include('components.header')

    @include('components.hero')

    @include('components.quote')

    @include('components.shop')

    @include('components.service')

    @include('components.footer')
</body>

</html>
