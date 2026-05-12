@extends('layouts.app')
@section('title', 'Buat Retur Toko')
@section('page-title', 'Buat Retur Toko ke Gudang')
@section('breadcrumb', 'Retur / Toko / Buat')

@section('content')
<div class="max-w-3xl mx-auto"
    x-data="storeReturnBuilder('{{ $store?->id ?? '' }}')">

    <form method="POST" action="{{ route('returns.store.store') }}" class="space-y-5" @submit="processing = true">
        @csrf

        <div class="bg-white rounded-xl border border-gray-200 p-5 space-y-4">
            <h2 class="text-sm font-semibold text-gray-700">Informasi Retur</h2>
            <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                <div>
                    <label class="block text-xs font-medium text-gray-500 mb-1">Toko</label>
                    <p class="text-sm font-medium text-gray-800 border border-gray-200 bg-gray-50 rounded-lg px-3 py-2">
                        {{ $store?->name ?? '—' }}
                    </p>
                </div>
                <div>
                    <label class="block text-xs font-medium text-gray-500 mb-1">Gudang Tujuan <span class="text-red-500">*</span></label>
                    <select name="warehouse_id" required
                        class="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-indigo-500 @error('warehouse_id') border-red-400 @enderror">
                        <option value="">Pilih gudang…</option>
                        @foreach($warehouses as $w)
                        <option value="{{ $w->id }}" {{ old('warehouse_id') == $w->id ? 'selected' : '' }}>{{ $w->name }}</option>
                        @endforeach
                    </select>
                    @error('warehouse_id')<p class="text-xs text-red-500 mt-1">{{ $message }}</p>@enderror
                </div>
                <div>
                    <label class="block text-xs font-medium text-gray-500 mb-1">Alasan Retur</label>
                    <select name="return_reason_id"
                        class="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-indigo-500">
                        <option value="">— Tanpa alasan khusus —</option>
                        @foreach($reasons as $reason)
                        <option value="{{ $reason->id }}" {{ old('return_reason_id') == $reason->id ? 'selected' : '' }}>
                            {{ $reason->name }}
                        </option>
                        @endforeach
                    </select>
                </div>
                <div>
                    <label class="block text-xs font-medium text-gray-500 mb-1">Catatan</label>
                    <input type="text" name="notes" value="{{ old('notes') }}" maxlength="500"
                        placeholder="Keterangan tambahan…"
                        class="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-indigo-500">
                </div>
            </div>
        </div>

        <div class="bg-white rounded-xl border border-gray-200 overflow-hidden">
            <div class="px-5 py-3 border-b border-gray-100 flex items-center justify-between">
                <h2 class="text-sm font-semibold text-gray-700">Item Retur</h2>
                <span class="text-xs text-gray-400" x-text="rows.length + ' item'"></span>
            </div>

            <div class="px-5 py-3 border-b border-gray-100 relative" @click.outside="showDrop = false">
                <input type="text" x-model="search" @input.debounce.300ms="doSearch()"
                    @focus="if(search === '') doSearch(true); else showDrop = true"
                    @keydown.enter.prevent="scanProduct()"
                    placeholder="Cari SKU atau nama produk…"
                    class="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-indigo-500">
                <div x-show="loading" class="absolute right-8 top-5">
                    <svg class="animate-spin h-4 w-4 text-indigo-500" fill="none" viewBox="0 0 24 24"><circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" stroke-width="4"></circle><path class="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4z"></path></svg>
                </div>
                <div x-show="showDrop" x-transition
                    class="absolute left-5 right-5 w-[calc(100%-2.5rem)] top-full mt-1 bg-white border border-gray-200 rounded-xl shadow-lg z-20 max-h-52 overflow-y-auto"
                    style="display:none">
                    <template x-for="v in results" :key="v.id">
                        <button type="button" @mousedown.prevent="addRow(v)"
                            class="w-full text-left px-4 py-2.5 hover:bg-indigo-50 text-sm border-b border-gray-50 last:border-0">
                            <span class="font-mono text-xs text-indigo-600" x-text="v.sku"></span>
                            <span class="ml-2 text-gray-700" x-text="v.label"></span>
                            <span class="ml-2 text-gray-400 text-xs" x-text="'Stok: ' + v.stock"></span>
                        </button>
                    </template>
                    <div x-show="results.length === 0 && !loading" class="px-4 py-3 text-gray-400 text-xs">Tidak ada hasil</div>
                </div>
            </div>

            <div class="overflow-x-auto">
                <table class="w-full text-sm">
                    <thead class="bg-gray-50 border-b border-gray-100">
                        <tr>
                            <th class="text-left px-4 py-3 text-xs font-semibold text-gray-600 uppercase">SKU</th>
                            <th class="text-left px-4 py-3 text-xs font-semibold text-gray-600 uppercase">Produk</th>
                            <th class="text-right px-4 py-3 text-xs font-semibold text-gray-600 uppercase">Stok</th>
                            <th class="text-right px-4 py-3 text-xs font-semibold text-gray-600 uppercase">Qty Retur</th>
                            <th class="px-4 py-3"></th>
                        </tr>
                    </thead>
                    <tbody class="divide-y divide-gray-100">
                        <template x-for="(row, idx) in rows" :key="row._key">
                            <tr>
                                <input type="hidden" :name="'items[' + idx + '][variant_id]'" :value="row.id">
                                <td class="px-4 py-2 font-mono text-xs text-gray-600" x-text="row.sku"></td>
                                <td class="px-4 py-2 text-xs text-gray-700" x-text="row.label"></td>
                                <td class="px-4 py-2 text-right text-xs text-gray-500" x-text="row.stock"></td>
                                <td class="px-4 py-2 text-right">
                                    <input type="number" :name="'items[' + idx + '][qty_returned]'"
                                        x-model.number="row.qty" :min="1" :max="row.stock"
                                        class="w-16 border border-gray-300 rounded-lg px-2 py-1 text-sm text-right focus:outline-none focus:ring-2 focus:ring-indigo-500">
                                </td>
                                <td class="px-4 py-2 text-center">
                                    <button type="button" @click="rows.splice(idx, 1)"
                                        class="text-red-400 hover:text-red-600 text-xs">✕</button>
                                </td>
                            </tr>
                        </template>
                        <tr x-show="rows.length === 0">
                            <td colspan="5" class="px-4 py-8 text-center text-gray-400 text-sm">Belum ada item — cari produk di atas</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="flex items-center justify-between">
            <a href="{{ route('returns.store.index') }}" class="text-sm text-gray-600 hover:underline">← Kembali</a>
            <button type="submit" :disabled="rows.length === 0 || processing"
                class="bg-indigo-600 hover:bg-indigo-700 disabled:opacity-50 text-white font-semibold px-6 py-2.5 rounded-lg text-sm">
                <span x-show="!processing">Buat Retur</span>
                <span x-show="processing">Menyimpan…</span>
            </button>
        </div>

    </form>
</div>

@push('scripts')
<script>
function storeReturnBuilder(storeId) {
    return {
        storeId: storeId,
        search: '',
        results: [],
        showDrop: false,
        loading: false,
        rows: [],
        processing: false,
        _key: 0,

        async doSearch(isInit = false) {
            if (!isInit && this.search.length > 0 && this.search.length < 2) {
                this.results = [];
                return;
            }
            if(!this.storeId) return;

            this.loading = true;
            try {
                const response = await fetch(`/api/v1/variants/search?q=${encodeURIComponent(this.search)}&store_id=${this.storeId}`, {
                    headers: { 'Accept': 'application/json' }
                });
                if (response.ok) {
                    this.results = await response.json();
                }
            } catch (e) {
                console.error("Gagal mengambil data", e);
            } finally {
                this.loading = false;
                this.showDrop = true;
            }
        },

        async scanProduct() {
            const q = this.search.trim();
            if (!q || !this.storeId) return;

            this.loading = true;
            try {
                const response = await fetch(`/api/v1/variants/search?q=${encodeURIComponent(q)}&store_id=${this.storeId}&exact=1`, {
                    headers: { 'Accept': 'application/json' }
                });
                if (response.ok) {
                    const data = await response.json();
                    if (data.length > 0) {
                        this.addRow(data[0]);
                    } else {
                        this.results = [];
                        this.showDrop = true;
                    }
                }
            } catch (e) {
                console.error("Gagal scan produk", e);
            } finally {
                this.loading = false;
            }
        },

        addRow(v) {
            const existing = this.rows.find(r => r.id === v.id);
            if (existing) { existing.qty = Math.min(existing.qty + 1, v.stock); }
            else {
                this.rows.push({ _key: this._key++, id: v.id, sku: v.sku, label: v.label, stock: v.stock, qty: 1 });
            }
            this.search = '';
            this.results = [];
        },
    };
}
</script>
@endpush
@endsection
