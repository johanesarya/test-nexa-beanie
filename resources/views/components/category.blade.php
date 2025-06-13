<section class="py-16 bg-white">
    <div class="container mx-auto px-4 max-w-5xl">
        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
            @foreach ($categories as $index => $category)
                @php
                    $isSecondRow = $index >= 2;
                    $flexDirection = $isSecondRow ? 'md:flex-row-reverse' : 'md:flex-row';
                @endphp

                <div
                    class="flex flex-col {{ $flexDirection }} items-stretch bg-white rounded-lg overflow-hidden shadow-sm">
                    <!-- Image -->
                    <div class="w-full md:w-1/2">
                        <img src="{{ asset($category->image) }}"
                            class="w-full h-full object-cover aspect-video md:aspect-auto">
                    </div>

                    <!-- Text Box -->
                    <div
                        class="w-full md:w-1/2 border border-gray-300 p-6 flex flex-col justify-center text-center md:text-left">
                        <h3 class="font-Marcellus text-lg font-semibold tracking-wide text-gray-800 mb-2 uppercase">
                            {{ $category->title }}
                        </h3>
                        <p class="font-OpenSans text-sm text-gray-600 mb-4">{{ $category->description }}</p>
                        <a href="#"
                            class="font-OpenSans text-sm font-semibold text-gray-800 border-b border-gray-500 hover:text-golden-brown transition">
                            SHOP CATEGORY
                        </a>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</section>
