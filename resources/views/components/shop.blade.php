<section class="container mx-auto py-16">
    <div class="flex justify-between items-center mb-8 px-10">
        <h2 class="text-3xl text-soft-brown">Shop Best Coffee</h2>
        <div class="flex items-center space-x-4">
            <a href="#" class="text-sm text-soft-brown hover:underline">View All</a>
            <button id="prev" class="p-2 bg-gray-100 rounded-full hover:bg-gray-200">
                <i class="fas fa-chevron-left text-lg text-gray-800"></i>
            </button>
            <button id="next" class="p-2 bg-gray-100 rounded-full hover:bg-gray-200">
                <i class="fas fa-chevron-right text-lg text-gray-800"></i>
            </button>
        </div>
    </div>

    <!-- Carousel Wrapper -->
    <div class="relative overflow-hidden max-w-[932px] mx-auto">

        @php
            use Illuminate\Support\Facades\File;

            $productImages = collect(File::files(public_path('images/products')))
                ->filter(fn($file) => in_array($file->getExtension(), ['png', 'jpg', 'jpeg', 'webp']))
                ->map(fn($file) => $file->getFilename())
                ->sort()
                ->values();
        @endphp

        <div class="relative overflow-hidden max-w-[932px] mx-auto">
            <div id="carousel-track" class="flex transition-transform duration-500 space-x-4 w-max">
                @foreach ($productImages as $image)
                    @php
                        $productName = ucwords(str_replace('-', ' ', pathinfo($image, PATHINFO_FILENAME)));
                    @endphp
                    <div class="w-[300px] flex-shrink-0">
                        <div class="rounded-lg overflow-hidden">
                            <div class="w-full aspect-[4/5]">
                                <img src="{{ asset('images/products/' . $image) }}" alt="{{ $productName }}"
                                    class="w-full h-full object-cover">
                            </div>
                            <div class="p-4 pl-0">
                                <h3 class="text-lg font-semibold text-soft-brown">{{ $productName }}</h3>
                                <p class="text-xl text-golden-brown">$29.00</p>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</section>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        let currentIndex = 0;
        const totalCards = 5;
        const cardsToShow = 3;
        const cardWidth = 300 + 16; // kartu + space-x-4

        const carousel = document.getElementById('carousel-track');
        const nextBtn = document.getElementById('next');
        const prevBtn = document.getElementById('prev');

        nextBtn.addEventListener('click', () => {
            currentIndex++;
            if (currentIndex >= totalCards - cardsToShow + 1) {
                currentIndex = 0;
            }
            updateCarousel();
        });

        prevBtn.addEventListener('click', () => {
            currentIndex--;
            if (currentIndex < 0) {
                currentIndex = totalCards - cardsToShow;
            }
            updateCarousel();
        });

        function updateCarousel() {
            carousel.style.transform = `translateX(-${currentIndex * cardWidth}px)`;
        }
    });
</script>
