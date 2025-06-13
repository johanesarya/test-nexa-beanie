<!-- Header Section -->
<header class="bg-md p-4 border-t border-b">
    <!-- Logo -->
    <div class="absolute top-0 left-1/2 transform -translate-x-1/2 -translate-y- pt-8 hidden md:block">
        <img src="{{ asset('images/logo.png') }}" alt="Beanie Logo" class="w-43 h-auto">
    </div>

    <div class="container mx-auto flex justify-between items-center">
        <!-- Burger Menu for Mobile -->
        <div class="md:hidden flex items-center">
            <button id="burger-menu" class="text-soft-brown hover:text-golden-brown">
                <span class="iconify" data-icon="fa-solid:bars"></span>
            </button>
        </div>

        <!-- Navigation Links (Menu) -->
        <nav class="flex space-x-6 md:flex hidden">
            <a href="/" class="font-Marcellus text-soft-brown hover:text-golden-brown text-sm">HOME</a>
            <a href="/shop" class="font-Marcellus text-soft-brown hover:text-golden-brown text-sm">SHOP</a>
            <a href="/blog" class="font-Marcellus text-soft-brown hover:text-golden-brown text-sm">BLOG</a>
            <a href="/pages" class="font-Marcellus text-soft-brown hover:text-golden-brown text-sm">PAGES</a>
        </nav>

        <!-- Search Bar, Love Button & Cart Button -->
        <div class="flex items-center space-x-4">
            <!-- Search Bar -->
            <div class="relative">
                <input type="text" placeholder="Search here..."
                    class="font-Marcellus p-2 pr-10 pl-4 border border-gray-300 rounded-full focus:outline-none focus:ring-2 focus:ring-golden-brown w-44" />
                <!-- Icon Search -->
                <div class="absolute right-4 top-1/2 transform -translate-y-1/2 text-gray-500">
                    <span class="iconify text-soft-brown" data-icon="solar:magnifer-outline"></span>
                </div>
            </div>

            <!-- Love Button (Icon) -->
            <div class="pl-4 pr-4">
                <a href="#" class="text-black hover:text-golden-brown">
                    <span class="iconify text-soft-brown" data-icon="solar:heart-outline"></span>
                </a>
            </div>

            <a href="#" class="flex items-center text-soft-brown hover:text-golden-brown">
                <!-- Icon -->
                <span class="iconify text-soft-brown text-xl mr-2" data-icon="solar:bag-linear"></span>
                <!-- Quantity -->
                <p class="text-soft-brown md:flex hidden">(01)</p>
            </a>
        </div>
    </div>

    <!-- Dropdown Menu for Mobile -->
    <div id="dropdown-menu" class="md:hidden flex flex-col items-center hidden space-y-4 mt-4">
        <a href="/" class="text-soft-brown hover:text-golden-brown text-sm">HOME</a>
        <a href="/shop" class="text-soft-brown hover:text-golden-brown text-sm">SHOP</a>
        <a href="/blog" class="text-soft-brown hover:text-golden-brown text-sm">BLOG</a>
        <a href="/pages" class="text-soft-brown hover:text-golden-brown text-sm">PAGES</a>
    </div>
</header>

<script>
    document.getElementById('burger-menu').addEventListener('click', function() {
        const dropdownMenu = document.getElementById('dropdown-menu');
        dropdownMenu.classList.toggle('hidden');
    });
</script>
