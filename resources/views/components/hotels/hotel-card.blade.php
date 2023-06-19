<div class="bg-white rounded shadow-md flex card text-grey-darkest">
    <img class="w-1/2 h-full rounded-l-sm" src="https://loremflickr.com/320/240?random=2" alt="Hotel Image">
    <div class="w-full flex flex-col justify-between p-4">
        <div>
            <a class="block text-grey-darkest mb-2 font-bold"
               href="{{ route('hotels.show', ['id' => $hotel->id ,'hotel' => $hotel]) }}">{{ $hotel->name }}</a>
            <div class="text-xs">
                {{ $hotel->address }}
            </div>
        </div>
        <div class="pt-2">
            <span class="text-2xl text-grey-darkest">₽{{ $hotel->price }}</span>
            <span class="text-lg"> за ночь</span>
        </div>
        @if($hotel->facilities->isNotEmpty())
            <div class="flex items-center py-2">
                @foreach($hotel->facilities->take(2) as $facility)
                    <div class="pr-2 text-xs">
                        <span>•</span> {{ $facility->name }}
                    </div>
                @endforeach
            </div>
        @endif
        <div class="flex justify-end">
            <x-link-button href="{{ route('hotels.show', ['id' => $hotel->id ,'hotel' => $hotel]) }}">Подробнее</x-link-button>
        </div>
    </div>
</div>
