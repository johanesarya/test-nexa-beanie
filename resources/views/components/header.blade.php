<!-- Header Section -->
<header class="bg-md p-4 border-t border-b">
    <!-- Logo -->
    <div class="absolute top-0 left-1/2 transform -translate-x-1/2 -translate-y- pt-8 hidden md:block">
        <img src="{{ asset('images/logo.png') }}" alt="Beanie Logo" class="w-43 h-auto">
    </div>

    <div class="container mx-auto flex justify-between items-center">
        <!-- Burger Menu for Mobile -->
        <div class="md:hidden flex items-center">
            <button id="burger-menu" class="text-gray-800 hover:text-orange-500">
                <i class="fas fa-bars"></i>
            </button>
        </div>

        <!-- Navigation Links (Menu) -->
        <nav class="flex space-x-6 md:flex hidden">
            <a href="/" class="text-gray-800 hover:text-orange-500 text-sm">HOME</a>
            <a href="/shop" class="text-gray-800 hover:text-orange-500 text-sm">SHOP</a>
            <a href="/blog" class="text-gray-800 hover:text-orange-500 text-sm">BLOG</a>
            <a href="/pages" class="text-gray-800 hover:text-orange-500 text-sm">PAGES</a>
        </nav>

        <!-- Search Bar, Love Button & Cart Button -->
        <div class="flex items-center space-x-4">
            <!-- Search Bar -->
            <div class="relative">
                <input type="text" placeholder="Search here..."
                    class="p-2 pr-10 pl-4 border border-gray-300 rounded-full focus:outline-none focus:ring-2 focus:ring-orange-500 w-44" />
                <!-- Icon Search -->
                <div class="absolute right-3 top-1/2 transform -translate-y-1/2 text-gray-500">
                    <i class="fas fa-search"></i>
                </div>
            </div>

            <!-- Love Button (Icon) -->
            <div class="pl-4 pr-4">
                <a href="#" class="text-black hover:text-orange-500">
                    <i class="far fa-heart"></i>
                </a>
            </div>

            <!-- Cart Button (Icon) -->
            <a href="#" class="text-gray-800 hover:text-orange-500">
                <i class="fas fa-shopping-cart"></i>
            </a>
        </div>
    </div>

    <!-- Dropdown Menu for Mobile -->
    <div id="dropdown-menu" class="md:hidden flex flex-col items-center hidden space-y-4 mt-4">
        <a href="/" class="text-gray-800 hover:text-orange-500 text-sm">HOME</a>
        <a href="/shop" class="text-gray-800 hover:text-orange-500 text-sm">SHOP</a>
        <a href="/blog" class="text-gray-800 hover:text-orange-500 text-sm">BLOG</a>
        <a href="/pages" class="text-gray-800 hover:text-orange-500 text-sm">PAGES</a>
    </div>
</header>

<script>
    document.getElementById('burger-menu').addEventListener('click', function() {
        const dropdownMenu = document.getElementById('dropdown-menu');
        dropdownMenu.classList.toggle('hidden');
    });
</script>
