<section class="container mx-auto py-16">
    <div class="flex justify-between items-center mb-10">
        <h3 class="text-3xl font-Marcellus text-soft-brown">READ OUR BLOGS</h3>
        <a href="#" class="font-OpenSans font-semibold text-soft-brown hover:underline text-xs">READ BLOG POSTS</a>
    </div>

    <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
        @foreach ($blogs as $blog)
            <div class="bg-white rounded-lg overflow-hidden">
                <img src="{{ asset('images/blog/' . $blog->image) }}" alt="{{ $blog->title }}"
                    class="w-full h-64 object-cover">
                <div class="p-6 pl-0">
                    <h3 class="text-xl font-Marcellus text-soft-brown mb-4">{{ strtoupper($blog->title) }}</h3>
                    <p class="text-xs font-OpenSans text-soft-brown mb-4">{{ $blog->description }}</p>
                </div>
            </div>
        @endforeach
    </div>
</section>
