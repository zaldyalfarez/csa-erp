<section>
    <header>
        <h2 class="text-lg font-medium text-gray-900">
            {{ __('Update Password') }}
        </h2>

        <p class="mt-1 text-sm text-gray-600">
            {{ __('Ensure your account is using a long, random password to stay secure.') }}
        </p>
    </header>

    <form method="post" action="{{ route('password.update') }}" class="mt-6 space-y-6" x-data="{ password: '' }">
        @csrf
        @method('put')

        <div>
            <x-input-label for="update_password_current_password" :value="__('Current Password')" />
            <x-text-input id="update_password_current_password" name="current_password" type="password" class="mt-1 block w-full" autocomplete="current-password" />
            <x-input-error :messages="$errors->updatePassword->get('current_password')" class="mt-2" />
        </div>

        <div>
            <x-input-label for="update_password_password" :value="__('New Password')" />
            <x-text-input 
                id="update_password_password" 
                name="password" 
                type="password" 
                class="mt-1 block w-full" 
                autocomplete="new-password"
                x-model="password"
                minlength="8"
            />
            <div class="mt-1">
                <p x-show="password.length > 0 && password.length < 8" class="text-xs text-red-600 font-bold flex items-center gap-1 animate-pulse">
                    <svg class="w-3 h-3" fill="currentColor" viewBox="0 0 20 20"><path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7 4a1 1 0 11-2 0 1 1 0 012 0zm-1-9a1 1 0 00-1 1v4a1 1 0 102 0V6a1 1 0 00-1-1z" clip-rule="evenodd"/></svg>
                    Password harus minimal 8 karakter (saat ini: <span x-text="password.length"></span>)
                </p>
                <p x-show="password.length == 0 || password.length >= 8" class="text-[10px] text-gray-400 uppercase tracking-wider font-semibold">
                    Minimal 8 karakter untuk keamanan optimal
                </p>
            </div>
            <x-input-error :messages="$errors->updatePassword->get('password')" class="mt-2" />
        </div>

        <div>
            <x-input-label for="update_password_password_confirmation" :value="__('Confirm Password')" />
            <x-text-input id="update_password_password_confirmation" name="password_confirmation" type="password" class="mt-1 block w-full" autocomplete="new-password" />
            <x-input-error :messages="$errors->updatePassword->get('password_confirmation')" class="mt-2" />
        </div>

        <div class="flex items-center gap-4">
            <x-primary-button x-bind:disabled="password.length > 0 && password.length < 8" x-bind:class="password.length > 0 && password.length < 8 ? 'opacity-50 cursor-not-allowed' : ''">
                {{ __('Save') }}
            </x-primary-button>
        </div>
    </form>
</section>
