# Suite Ararat Hotel

Static website for Suite Ararat Hotel in Duhok, Iraq — plain HTML/CSS/JS, no build step.

- `index.html` — home page (hotel info, amenities, staff)
- `RoomsAndRates.html` — room types, photos, and prices
- `images/` — photos used on both pages

Supports English, Kurdish (Badini), and Arabic via an in-page translation script, with RTL layout for Kurdish and Arabic. The "Book Now" / "Book Your Bed Now" buttons link to the contact section — there is no online booking, guests are expected to call or email directly.

To preview locally, serve this folder with any static file server, e.g.:

```
python3 -m http.server 8000
```

then open `http://localhost:8000`.
