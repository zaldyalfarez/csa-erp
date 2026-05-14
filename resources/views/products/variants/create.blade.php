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
                        <h3 class="text-sm font-bold text-gray-900">Pilih Warna, Gambar & Ukuran</h3>
                        <button type="button" @click="selectAllColors()" class="text-xs text-indigo-600 hover:underline">Pilih Semua Warna</button>
                    </div>
                    <div class="space-y-3">
                        @foreach($colors as $color)
                            <div class="flex flex-col gap-3 p-4 border border-gray-100 rounded-xl hover:bg-gray-50/50 transition-all"
                                :class="selectedColors.includes('{{ $color->id }}') ? 'bg-gray-50 border-gray-200' : ''">
                                <label class="flex items-center gap-3 cursor-pointer group">
                                    <input type="checkbox" name="color_ids[]" value="{{ $color->id }}" x-model="selectedColors"
                                        @change="toggleColor('{{ $color->id }}')"
                                        class="color-cb w-4 h-4 text-indigo-600 border-gray-300 rounded focus:ring-indigo-500">
                                    <div class="flex items-center gap-2">
                                        @if($color->hex_code)
                                            <div class="w-3 h-3 rounded-full border border-gray-200" style="background-color: {{ $color->hex_code }}"></div>
                                        @endif
                                        <span class="text-sm font-medium text-gray-700 group-hover:text-gray-900">{{ $color->name }}</span>
                                    </div>
                                </label>
                                
                                {{-- Picker for this color --}}
                                <div x-show="selectedColors.includes('{{ $color->id }}')" x-transition class="pl-7 space-y-4">
                                    {{-- Image --}}
                                    <div class="flex items-center gap-3">
                                        <div class="w-10 h-10 rounded-lg border border-gray-200 overflow-hidden shrink-0 bg-white">
                                            <img :src="getImageUrl(colorImages['{{ $color->id }}'])" class="w-full h-full object-cover">
                                        </div>
                                        <div class="flex-1">
                                            <p class="text-[10px] text-gray-400 uppercase font-bold mb-1">Pilih Gambar:</p>
                                            <select :name="'color_images['+{{ $color->id }}+']'" x-model="colorImages['{{ $color->id }}']"
                                                class="text-xs w-full border-gray-200 rounded-lg p-1.5 focus:ring-indigo-500">
                                                @foreach($product->images as $image)
                                                    <option value="{{ $image->id }}">Gambar #{{ $loop->iteration }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>

                                    {{-- Sizes --}}
                                    <div class="space-y-2">
                                        <p class="text-[10px] text-gray-400 uppercase font-bold">Pilih Ukuran (yg belum ada):</p>
                                        <div class="grid grid-cols-4 sm:grid-cols-8 lg:grid-cols-10 gap-2">
                                            @foreach($sizes as $size)
                                                <label x-show="!isSizeExisting('{{ $color->id }}', '{{ $size->id }}')" 
                                                    class="flex flex-col items-center justify-center p-2 border border-gray-200 rounded-lg cursor-pointer hover:border-indigo-300 hover:bg-white transition-all group"
                                                    :class="colorSizes['{{ $color->id }}'] && colorSizes['{{ $color->id }}'].includes('{{ $size->id }}') ? 'bg-indigo-600 border-indigo-600 shadow-md shadow-indigo-100' : 'bg-white'">
                                                    <input type="checkbox" :name="'color_sizes['+{{ $color->id }}+'][]'" value="{{ $size->id }}" 
                                                        x-model="colorSizes['{{ $color->id }}']"
                                                        @change="updateCombinations()"
                                                        class="sr-only">
                                                    <span class="text-[10px] font-bold uppercase transition-colors"
                                                        :class="colorSizes['{{ $color->id }}'] && colorSizes['{{ $color->id }}'].includes('{{ $size->id }}') ? 'text-white' : 'text-gray-600'">
                                                        {{ $size->name }}
                                                    </span>
                                                </label>
                                            @endforeach
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>

            <div class="flex items-center justify-between bg-white p-6 rounded-xl border border-gray-200">
                <a href="{{ route('products.show', $product) }}" class="text-sm text-gray-600 hover:underline">← Kembali ke Produk</a>
                <div class="flex gap-3">
                    <button type="submit" :disabled="!hasValidSelection()"
                        class="bg-indigo-600 hover:bg-indigo-700 disabled:bg-gray-200 text-white font-bold px-8 py-3 rounded-xl text-sm shadow-lg shadow-indigo-200 transition-all active:scale-95">
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
                colorImages: {}, // Mapping colorId -> productImageId
                colorSizes: {},  // Mapping colorId -> [sizeId, ...]
                existingVariants: @json($existingVariants),
                images: @json($product->images->map(fn($img) => ['id' => $img->id, 'url' => $img->url()])),
                defaultImageId: @json($product->images->first()?->id ?? null),

                init() {
                    @foreach($colors as $color)
                        this.colorSizes['{{ $color->id }}'] = [];
                    @endforeach
                },

                selectAllColors() {
                    let allColorIds = @json($colors->pluck('id')->map(fn($id) => (string)$id));
                    this.selectedColors = allColorIds;
                    allColorIds.forEach(id => {
                        if (!this.colorImages[id]) this.colorImages[id] = this.defaultImageId;
                        if (!this.colorSizes[id]) this.colorSizes[id] = [];
                    });
                    this.updateCombinations();
                },

                toggleColor(id) {
                    if (this.selectedColors.includes(id)) {
                        if (!this.colorImages[id]) this.colorImages[id] = this.defaultImageId;
                        if (!this.colorSizes[id]) this.colorSizes[id] = [];
                    }
                },

                isSizeExisting(colorId, sizeId) {
                    return this.existingVariants.some(v => v.color_id == colorId && v.size_id == sizeId);
                },

                hasValidSelection() {
                    if (this.selectedColors.length === 0) return false;
                    return this.selectedColors.some(colorId => {
                        return this.colorSizes[colorId] && this.colorSizes[colorId].length > 0;
                    });
                },

                updateCombinations() {
                    // Logic combination removed since we submit directly
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