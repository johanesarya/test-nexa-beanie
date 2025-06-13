{{-- @dd($products) --}}
<section class="container mx-auto py-16">
    <div class="flex justify-between items-center mb-8 px-10 pl-0 pr-0">
        <h2 class="font-Marcellus text-sm sm:text-base md:text-2xl lg:text-3xl text-soft-brown">SHOP BEST COFFEE</h2>
        <div class="flex items-center space-x-4">
            <a href="#" class="font-OpenSans font-semibold text-sm text-soft-brown">VIEW ALL</a>
            <button id="prev" class="p-2 bg-gray-100 rounded-full hover:bg-gray-200">
                <span class="iconify text-lg text-soft-brown" data-icon="carbon:chevron-left"></span>
            </button>
            <button id="next" class="p-2 bg-gray-100 rounded-full hover:bg-gray-200">
                <span class="iconify text-lg text-soft-brown" data-icon="carbon:chevron-right"></span>
            </button>
        </div>
    </div>

    <div class="relative overflow-hidden max-w-[932px] mx-auto">
        <div class="relative overflow-hidden max-w-[932px] mx-auto">
            <div id="carousel-track" class="flex transition-transform duration-500 space-x-4 w-max">
                @foreach ($products as $product)
                    <div class="w-[300px] flex-shrink-0">
                        <div class="rounded-lg overflow-hidden">
                            <div class="w-full aspect-[4/5]">
                                <img src="{{ asset($product->image) }}" class="w-full h-full object-cover">
                            </div>
                            <div class="p-4 pl-0">
                                <h3 class="text-lg font-Marcellus text-soft-brown">{{ $product->name }}</h3>
                                <p class="text-xl font-Marcellus text-golden-brown">
                                    ${{ number_format($product->price, 2) }}</p>
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
        const cardWidth = 300 + 16;

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
