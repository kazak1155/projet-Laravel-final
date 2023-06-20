<div class="bg-white rounded shadow-md flex card text-grey-darkest border_div">
    <table>
        <tr>
            <th rowspan=2>
                <img class="w-1/2 h-full rounded-l-sm" src="https://loremflickr.com/320/240?random=2" alt="Hotel Image">
            </th>
            <th>
                <div>
                    <a class="block text-grey-darkest mb-2 font-bold"
                       href="{{ route('hotels.show', ['id' => $hotel->id ,'hotel' => $hotel]) }}">Hotel
                        name: {{ $hotel->name }}</a>
                </div>
            </th>
            <th>
                <div class="pt-2">
                    <span class="text-2xl text-grey-darkest">{{ $hotel->rooms->avg('price') }} ₽</span>
                    <span class="text-lg">средняя цена за ночь</span>
                </div>
            </th>
        </tr>
        <tr>
            <td>
                <div class="text-xs">
                    address hotel: {{ $hotel->address }}
                </div>
            </td>
            <td>
                @if($hotel->facilities->isNotEmpty())
                    <div class="flex items-center py-2">
                        @foreach($hotel->facilities->take(2) as $facility)
                            <div class="pr-2 text-xs">
                                <span>name facility: </span> {{ $facility->name }}
                            </div>
                        @endforeach
                    </div>
                @endif
            </td>
        </tr>
    </table>

    <div class="flex justify-end">
        <x-link-button href="{{ route('hotels.show', ['id' => $hotel->id ,'hotel' => $hotel]) }}">Подробнее
        </x-link-button>
    </div>
</div>
