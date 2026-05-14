@extends('layouts.app')
@section('title', 'Tambah Varian')
@section('page-title', 'Tambah Varian — ' . $product->name)
@section('breadcrumb', 'Produk / ' . $product->model_code . ' / Varian Baru')

@section('content')
    <div class="max-w-4xl mx-auto" x-data="variantCreator()">
        <form method="POST" action="{{ route('products.variants.store', $product) }}" class="space-y-6">
            @csrf

            <div class="bg-white rounded-xl border border-gray-200 p-6 space-y-8">
                <div class="flex items-center justify-between border-b border-gray-50 pb-4">
                    <h2 class="text-sm font-semibold text-gray-700 uppercase tracking-wide">Pengaturan Varian</h2>
                    <span class="text-xs font-mono text-gray-400 bg-gray-100 px-2 py-1 rounded">{{ $product->name }}</span>
                </div>

                {{-- Colors --}}
                <div class="space-y-4">
                    <div class="flex items-center justify-between">
                        <h3 class="text-sm font-bold text-gray-900">1. Pilih Warna & Gambar</h3>
                        <button type="button" @click="selectAllColors()" class="text-xs text-indigo-600 hover:underline">Pilih Semua Warna</button>
                    </div>
                    <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-3">
                        @foreach($colors as $color)
                            <div class="flex flex-col gap-2 p-3 border border-gray-100 rounded-xl hover:bg-gray-50 transition-all">
                                <label class="flex items-center gap-3 cursor-pointer group">
                                    <input type="checkbox" name="color_ids[]" value="{{ $color->id }}" x-model="selectedColors"
                                        @change="toggleColor('{{ $color->id }}')"
                                        class="color-cb w-4 h-4 text-indigo-600 border-gray-300 rounded focus:ring-indigo-500">
                                    <div class="flex items-center gap-2">
                                        @if($color->hex_code)
                                            <div class="w-3 h-3 rounded-full border border-gray-200" style="background-color: {{ $color->hex_code }}"></div>
                                        @endif
                                        <span class="text-xs text-gray-700 group-hover:text-gray-900">{{ $color->name }}</span>
                                    </div>
                                </label>
                                
                                {{-- Image picker for this color --}}
                                <div x-show="selectedColors.includes('{{ $color->id }}')" x-transition class="mt-1 pl-7 flex items-center gap-2">
                                    <div class="w-8 h-8 rounded border border-gray-200 overflow-hidden shrink-0 bg-gray-50">
                                        <img :src="getImageUrl(colorImages['{{ $color->id }}'])" class="w-full h-full object-cover">
                                    </div>
                                    <select :name="'color_images['+{{ $color->id }}+']'" x-model="colorImages['{{ $color->id }}']"
                                        class="text-[10px] flex-1 border-gray-200 rounded p-1 focus:ring-indigo-500">
                                        @foreach($product->images as $image)
                                            <option value="{{ $image->id }}">Gambar #{{ $loop->iteration }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>

                {{-- Sizes --}}
                <div class="space-y-4 pt-6 border-t border-gray-50">
                    <div class="flex items-center justify-between">
                        <h3 class="text-sm font-bold text-gray-900">2. Pilih Ukuran</h3>
                        <button type="button" @click="selectAllSizes()" class="text-xs text-indigo-600 hover:underline">Pilih Semua Ukuran</button>
                    </div>
                    <div class="grid grid-cols-3 sm:grid-cols-6 gap-3">
                        @foreach($sizes as $size)
                            <label class="flex items-center gap-3 p-3 border border-gray-100 rounded-xl hover:bg-gray-50 cursor-pointer transition-all group">
                                <input type="checkbox" name="size_ids[]" value="{{ $size->id }}" x-model="selectedSizes"
                                    class="size-cb w-4 h-4 text-indigo-600 border-gray-300 rounded focus:ring-indigo-500">
                                <span class="text-xs text-gray-700 group-hover:text-gray-900 font-bold uppercase">{{ $size->name }}</span>
                            </label>
                        @endforeach
                    </div>
                </div>
            </div>

            <div class="flex items-center justify-between bg-white p-6 rounded-xl border border-gray-200">
                <a href="{{ route('products.show', $product) }}" class="text-sm text-gray-600 hover:underline">← Kembali ke Produk</a>
                <div class="flex gap-3">
                    <button type="submit" :disabled="selectedColors.length === 0 || selectedSizes.length === 0"
                        class="bg-indigo-600 hover:bg-indigo-700 disabled:bg-gray-300 text-white font-bold px-8 py-3 rounded-xl text-sm shadow-lg shadow-indigo-200 transition-all active:scale-95">
                        GENERATE VARIAN
                    </button>
                </div>
            </div>
        </form>
    </div>

    <script>
        function variantCreator() {
            return {
                selectedColors: [],
                selectedSizes: [],
                combinations: [],
                colorImages: {}, // Mapping colorId -> productImageId
                images: @json($product->images->map(fn($img) => ['id' => $img->id, 'url' => $img->url()])),
                defaultImageId: @json($product->images->first()?->id ?? null),

                selectAllColors() {
                    let allColorIds = @json($colors->pluck('id')->map(fn($id) => (string)$id));
                    this.selectedColors = allColorIds;
                    allColorIds.forEach(id => {
                        if (!this.colorImages[id]) this.colorImages[id] = this.defaultImageId;
                    });
                    this.updateCombinations();
                },

                selectAllSizes() {
                    let allSizeIds = @json($sizes->pluck('id')->map(fn($id) => (string)$id));
                    this.selectedSizes = allSizeIds;
                    this.updateCombinations();
                },

                toggleColor(id) {
                    if (this.selectedColors.includes(id)) {
                        if (!this.colorImages[id]) this.colorImages[id] = this.defaultImageId;
                    }
                    this.updateCombinations();
                },

                updateCombinations() {
                    let newCombinations = [];
                    this.selectedColors.forEach(colorId => {
                        let colorEl = document.querySelector(`.color-cb[value="${colorId}"]`);
                        if (!colorEl) return;
                        let colorName = colorEl.dataset.name;
                        
                        let productImageId = this.colorImages[colorId] || this.defaultImageId;

                        this.selectedSizes.forEach(sizeId => {
                            let sizeEl = document.querySelector(`.size-cb[value="${sizeId}"]`);
                            if (!sizeEl) return;
                            let sizeName = sizeEl.dataset.name;
                            
                            newCombinations.push({
                                colorId: colorId,
                                colorName: colorName,
                                sizeId: sizeId,
                                sizeName: sizeName,
                                productImageId: productImageId
                            });
                        });
                    });
                    this.combinations = newCombinations;
                },

                removeCombination(index) {
                    this.combinations.splice(index, 1);
                },

                getImageUrl(id) {
                    let img = this.images.find(i => i.id == id);
                    return img ? img.url : 'https://placehold.co/100x100?text=No+Image';
                }
            }
        }
    </script>

    <style>
        .custom-scrollbar::-webkit-scrollbar {
            width: 4px;
        }

        .custom-scrollbar::-webkit-scrollbar-track {
            background: #f1f1f1;
        }

        .custom-scrollbar::-webkit-scrollbar-thumb {
            background: #ddd;
            border-radius: 10px;
        }

        .custom-scrollbar::-webkit-scrollbar-thumb:hover {
            background: #ccc;
        }
    </style>
@endsection