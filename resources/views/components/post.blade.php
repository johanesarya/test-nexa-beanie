<section class="py-16">
    <div class="container mx-auto text-center mb-10">
        <h2 class="text-3xl font-Marcellus text-soft-brown mb-6">FOLLOW OUR INSTAGRAM #BEANIE</h2>
    </div>

    <div class="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-6 gap-6">
        @foreach ($posts as $post)
            <div class="overflow-hidden rounded-lg">
                <img src="{{ asset('images/post/' . $post->image) }}" alt="post {{ $loop->iteration }}"
                    class="w-full h-auto object-cover">
            </div>
        @endforeach
    </div>
</section>
