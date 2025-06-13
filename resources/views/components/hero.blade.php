<!-- Hero Section -->
<section class="flex justify-center items-center h-auto mt-10 md:mt-15">
    <div class="flex container mx-auto p-8 md:w-11/12 w-full">
        <!-- Gambar kiri -->
        <div class="w-full md:w-1/2">
            <img src="{{ asset('images/hero-coffee.png') }}" alt="Specialty Coffee" class="w-full h-auto object-cover">
        </div>

        <!-- Teks kanan -->
        <div class="w-full md:w-1/2 flex flex-col justify-center items-center pl-auto text-center relative">
            <!-- Background Image -->
            <img src="{{ asset('images/hero-coffee-2.png') }}" alt="Specialty Coffee"
                class="w-full h-auto object-cover absolute inset-0 z-0">

            <!-- Teks di tengah -->
            <div class="flex flex-col justify-center items-center z-10 relative w-full h-full">
                <h1 class="text-3xl hidden md:block text-white z-10 relative">
                    <span class="font-Marcellus text-soft-brown">SPECIAL</span>
                    <span class="font-Marcellus text-golden-brown">COFFEE</span>
                </h1>
                <p
                    class="font-OpenSans mt-4 text-base hidden md:block sm:text-xs md:text-sm text-soft-brown opacity-80 z-10 relative">
                    Morbi justo vel diam non leo elementum massa. Molestie ipsum condimentum egestas vitae ut cras
                    aenean
                    enim. Laoreet odio adipiscing auctor scelerisque phasellus nisl faucibus.
                </p>
                <a href="#order"
                    class="font-OpenSans font-semibold md:mt-6 inline-block border border-soft-brown text-soft-brown py-2 px-6 md:px-10 rounded-full">
                    ORDER NOW
                </a>
            </div>
        </div>
    </div>
</section>
