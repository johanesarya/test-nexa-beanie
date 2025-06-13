<section class="py-20">
    <div class="max-w-6xl mx-auto px-4 grid grid-cols-1 md:grid-cols-2 gap-12">
        <div>
            <h2 class="text-2xl font-Marcellus tracking-wide text-soft-brown uppercase mb-8">New Arrivals</h2>
            <ul class="space-y-6">
                @foreach ($newArrivals as $item)
                    <li class="flex items-start justify-between">
                        <div class="flex items-start space-x-4">
                            <img src="{{ asset($item->image) }}" class="w-12 h-12 object-cover rounded-full">
                            <div>
                                <h4 class="text-sm font-Marcellus text-soft-brown">{{ $item->title }}</h4>
                                <p class="text-sm font-OpenSans text-soft-brown">{{ $item->desc }}</p>
                            </div>
                        </div>
                        <span
                            class="text-sm text-soft-brown font-Marcellus">${{ number_format($item->price, 2) }}</span>
                    </li>
                @endforeach
            </ul>
            <a href="#"
                class="text-sm text-soft-brown font-OpenSans font-semibold inline-block mt-6 hover:underline">VIEW
                ALL</a>
        </div>

        <div>
            <h2 class="text-2xl font-Marcellus tracking-wide text-soft-brown uppercase mb-8">Best Selling</h2>
            <ul class="space-y-6">
                <ul class="space-y-6">
                    @foreach ($bestSelling as $item)
                        <li class="flex items-start justify-between">
                            <div class="flex items-start space-x-4">
                                <img src="{{ asset($item->image) }}" class="w-12 h-12 object-cover rounded-full">
                                <div>
                                    <h4 class="text-sm font-Marcellus text-soft-brown">{{ $item->title }}</h4>
                                    <p class="text-sm font-OpenSans text-soft-brown">{{ $item->desc }}</p>
                                </div>
                            </div>
                            <span
                                class="text-sm text-soft-brown font-Marcellus">${{ number_format($item->price, 2) }}</span>
                        </li>
                    @endforeach
                </ul>

            </ul>
            <a href="#"
                class="text-sm text-soft-brown font-OpenSans font-semibold inline-block mt-6 hover:underline">VIEW
                ALL</a>
        </div>
    </div>
</section>
