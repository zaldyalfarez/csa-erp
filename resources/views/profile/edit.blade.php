@extends('layouts.app')
@section('title', 'Profil Saya')
@section('page-title', 'Pengaturan Profil')

@section('content')
<div class="max-w-4xl mx-auto space-y-6">
    {{-- Update Profile Information --}}
    <div class="bg-white p-6 sm:p-8 rounded-2xl border border-gray-100 shadow-sm">
        <div class="max-w-xl">
            @include('profile.partials.update-profile-information-form')
        </div>
    </div>

    {{-- Update Password --}}
    <div class="bg-white p-6 sm:p-8 rounded-2xl border border-gray-100 shadow-sm">
        <div class="max-w-xl">
            @include('profile.partials.update-password-form')
        </div>
    </div>
</div>
@endsection
