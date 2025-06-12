<!-- Hero Section -->
<section class="flex justify-center items-center h-auto mt-10 md:mt-15">
    <div class="flex container mx-auto p-8 md:w-11/12 w-full">
        <!-- Left Side (Image) -->
        <div class="w-full md:w-1/2">
            <img src="{{ asset('images/hero-coffee.png') }}" alt="Specialty Coffee" class="w-full h-auto object-cover">
        </div>

        <!-- Right Side (Text) with Background Image -->
        <div
            class="w-full sm:w-2/3 md:w-1/2 flex flex-col justify-center items-center pl-8 text-center relative max-w-lg mx-auto">
            <!-- Background Image -->
            <img src="{{ asset('images/hero-coffee-2.png') }}" alt="Specialty Coffee"
                class="w-full h-auto object-cover absolute inset-0 z-0">

            <!-- Text on top of image -->
            <h1 class="text-3xl sm:text-4xl md:text-5xl font-bold text-white z-10 relative">
                <span class="text-soft-brown">SPECIAL</span>
                <span class="text-golden-brown">COFFEE</span>
            </h1>
            <p class="mt-4 text-base sm:text-xs md:text-sm text-soft-brown opacity-80 z-10 relative">
                Morbi justo vel diam non leo elementum massa. Molestie ipsum condimentum egestas vitae ut cras aenean
                enim. Laoreet odio adipiscing auctor scelerisque phasellus nisl faucibus.
            </p>
            <a href="#order"
                class="mt-6 inline-block border border-soft-brown text-soft-brown py-2 px-6 rounded-full z-10 relative">
                ORDER NOW
            </a>
        </div>
    </div>
</section>
