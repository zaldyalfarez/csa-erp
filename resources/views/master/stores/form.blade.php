@extends('layouts.app')
@section('title', isset($store) ? 'Edit Toko' : 'Tambah Toko')
@section('page-title', isset($store) ? 'Edit Toko' : 'Tambah Toko')
@section('content')
<div class="max-w-lg">
    <div class="bg-white rounded-xl border border-gray-200 shadow-sm p-6">
        <form method="POST" action="{{ isset($store) ? route('master.stores.update', $store) : route('master.stores.store') }}" class="space-y-4"
            @if(isset($store) && isset($targetAlreadySetThisMonth) && $targetAlreadySetThisMonth && auth()->user()->hasAnyRole(['owner', 'superadmin']))
                onsubmit="return confirm('TARGET BULAN INI BARU DIRUBAH DI BULAN INI, YAKIN INGIN DIRUBAH TARGETNYA?')"
            @endif
        >
            @csrf @if(isset($store)) @method('PUT') @endif
            <div class="grid grid-cols-2 gap-4">
                <div>
                    <label class="block text-sm font-medium text-gray-700 mb-1">Nama Toko <span class="text-red-500">*</span></label>
                    <input type="text" name="name" value="{{ old('name', $store->name ?? '') }}" class="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-indigo-500">
                </div>
                <div>
                    <label class="block text-sm font-medium text-gray-700 mb-1">Kode <span class="text-red-500">*</span></label>
                    <input type="text" name="code" value="{{ old('code', $store->code ?? '') }}" class="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm font-mono uppercase focus:outline-none focus:ring-2 focus:ring-indigo-500" maxlength="20">
                </div>
            </div>
            <div>
                <label class="block text-sm font-medium text-gray-700 mb-1">Alamat</label>
                <textarea name="address" rows="2" class="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-indigo-500">{{ old('address', $store->address ?? '') }}</textarea>
            </div>
            <div class="grid grid-cols-2 gap-4">
                <div>
                    <label class="block text-sm font-medium text-gray-700 mb-1">Kota</label>
                    <input type="text" name="city" value="{{ old('city', $store->city ?? '') }}" class="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-indigo-500">
                </div>
                <div>
                    <label class="block text-sm font-medium text-gray-700 mb-1">Telepon</label>
                    <input type="text" name="phone" value="{{ old('phone', $store->phone ?? '') }}" class="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-indigo-500">
                </div>
            </div>
            <div>
                <label class="block text-sm font-medium text-gray-700 mb-1">Nama PIC</label>
                <input type="text" name="pic_name" value="{{ old('pic_name', $store->pic_name ?? '') }}" class="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-indigo-500">
            </div>
            <div class="grid grid-cols-1 md:grid-cols-3 gap-4">
                <div>
                    <label class="block text-sm font-medium text-gray-700 mb-1">Bank</label>
                    <input type="text" name="bank_name" value="{{ old('bank_name', $store->bank_name ?? '') }}" placeholder="BCA / Mandiri" class="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-indigo-500">
                </div>
                <div>
                    <label class="block text-sm font-medium text-gray-700 mb-1">Nomor Rekening</label>
                    <input type="text" name="bank_account" value="{{ old('bank_account', $store->bank_account ?? '') }}" placeholder="1234567890" class="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-indigo-500">
                </div>
                <div>
                    <label class="block text-sm font-medium text-gray-700 mb-1">Atas Nama</label>
                    <input type="text" name="bank_account_name" value="{{ old('bank_account_name', $store->bank_account_name ?? '') }}" placeholder="Nama Pemilik Rekening" class="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-indigo-500">
                </div>
            </div>
            
            @if(auth()->user()->hasAnyRole(['owner', 'superadmin']))
            <div class="p-4 bg-indigo-50 border border-indigo-100 rounded-lg">
                <label class="block text-sm font-semibold text-indigo-900 mb-1">
                    Target Penjualan Bulanan (Pcs)
                    <span class="text-xs font-normal text-indigo-700 ml-2">Target untuk bulan: {{ now()->translatedFormat('F Y') }}</span>
                </label>
                <input type="number" name="monthly_target_qty" value="{{ old('monthly_target_qty', $store->monthly_target_qty ?? 0) }}" min="0" class="w-full md:w-1/2 border border-indigo-300 rounded-lg px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-indigo-500">
                <p class="text-xs text-indigo-700 mt-2">Jika terjual melebihi target, toko akan mendapat bonus Rp 1 Juta per kelipatan 1.000 pcs. Reward reguler tetap dihitung per item dan dibagikan per tahun.</p>
                @if(isset($targetAlreadySetThisMonth) && $targetAlreadySetThisMonth)
                <p class="text-xs text-amber-700 bg-amber-50 border border-amber-200 rounded px-3 py-2 mt-2 font-medium">⚠ Target bulan ini sudah pernah disimpan. Mengubahnya akan menimpa target yang sudah ditetapkan untuk bulan {{ now()->translatedFormat('F Y') }}.</p>
                @endif
            </div>
            @endif
            <div class="flex items-center gap-2">
                <input type="hidden" name="is_active" value="0">
                <input type="checkbox" name="is_active" id="is_active" value="1" {{ old('is_active', $store->is_active ?? true) ? 'checked' : '' }} class="w-4 h-4 text-indigo-600 rounded border-gray-300">
                <label for="is_active" class="text-sm font-medium text-gray-700">Aktif</label>
            </div>
            <div class="flex items-center gap-3 pt-2 border-t border-gray-100">
                <button type="submit" class="bg-indigo-600 hover:bg-indigo-700 text-white text-sm font-medium px-5 py-2 rounded-lg">{{ isset($store) ? 'Simpan' : 'Tambah' }}</button>
                <a href="{{ route('master.stores.index') }}" class="bg-gray-100 text-gray-700 text-sm font-medium px-5 py-2 rounded-lg">Batal</a>
            </div>
        </form>
    </div>
</div>
@endsection
