'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"canvaskit/skwasm.wasm": "39dd80367a4e71582d234948adc521c0",
"canvaskit/chromium/canvaskit.wasm": "f504de372e31c8031018a9ec0a9ef5f0",
"canvaskit/chromium/canvaskit.js": "8191e843020c832c9cf8852a4b909d4c",
"canvaskit/chromium/canvaskit.js.symbols": "b61b5f4673c9698029fa0a746a9ad581",
"canvaskit/canvaskit.wasm": "7a3f4ae7d65fc1de6a6e7ddd3224bc93",
"canvaskit/canvaskit.js": "728b2d477d9b8c14593d4f9b82b484f3",
"canvaskit/skwasm.js": "ea559890a088fe28b4ddf70e17e60052",
"canvaskit/skwasm.js.symbols": "e72c79950c8a8483d826a7f0560573a1",
"canvaskit/canvaskit.js.symbols": "bdcd3835edf8586b6d6edfce8749fb77",
"manifest.json": "dcc3d0a8fd596930a8fc2d4bbc48de0f",
"main.dart.js": "0e5f87647d0fd620545f4ff1f07f2658",
"flutter.js": "83d881c1dbb6d6bcd6b42e274605b69c",
"index.html": "54736460aed979ab40ec3e8a8a436375",
"/": "54736460aed979ab40ec3e8a8a436375",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/AssetManifest.bin.json": "dd068bf211a1ef3ecacae4c863e4074f",
"assets/AssetManifest.bin": "ca0da729a72290a7a29be4f1b0302bf6",
"assets/NOTICES": "0c84f2ae65ef5f28666a6ce7e892eec5",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/assets/icons/git_icon.svg": "fee6952807afc03e375b8917c273c6ad",
"assets/assets/icons/figma_icon.svg": "e4d477f4b50ca750010cc10c5a5bbb53",
"assets/assets/icons/phone.svg": "4fc030fb15424b8b72012ca9cfe56086",
"assets/assets/icons/github.svg": "5898fd95a0ee9178f834251fe3d93029",
"assets/assets/icons/api_integeration_logo.svg": "b228c69426396675f38bf80a1610d16b",
"assets/assets/icons/testing_logo.svg": "062c2c2c94662b6a0d7dd1f338f9954d",
"assets/assets/icons/linkedin.svg": "751ef168a87f837aedc33952bdda5698",
"assets/assets/icons/whatsapp.svg": "17a4bd3db693d9c59fce39fc413180c0",
"assets/assets/icons/visual_studio_code_logo.svg": "e60fcd0974402a2aaf59f3835776c5ea",
"assets/assets/icons/profile.svg": "11af8a65bd193cddbb89667c26d6e5fb",
"assets/assets/icons/firebase_icon.svg": "7f1bf2795e067daf4ac3b42a2a140496",
"assets/assets/icons/postman_logo.svg": "fbfb57a181ce251926d686d12e6cee5a",
"assets/assets/icons/calender.svg": "68679e95f083fe3d5b71a383025b0338",
"assets/assets/icons/instagram.svg": "c4d145c039801f0be1451eec237d5a0a",
"assets/assets/icons/flutter_icon.svg": "749737f954a8acaae1b3d389b3fc857f",
"assets/assets/icons/experience.svg": "feff18c8ceef1f927a96bc4bfbf7f356",
"assets/assets/icons/dart_icon.svg": "77736b70355db3b992d712891749acd5",
"assets/assets/icons/location.svg": "5750714cdc8e06d633112088434707df",
"assets/assets/icons/projects.svg": "96a9485432dd2d409db6921fc9e9075f",
"assets/assets/icons/clean_arch_logo.svg": "627044d24e49bc77245ddd0b5b7d02e8",
"assets/assets/icons/android_studio_logo.svg": "b7bd6eace744043bfdc726ffaaa4d94b",
"assets/assets/icons/contact.svg": "4f5af3e09df85ae7d17a83b1280393c0",
"assets/assets/icons/skills.svg": "5d89367a50ca74b6623e66562c2d971d",
"assets/assets/icons/dark.svg": "c16d960518c5e88748566a44b0ca0a30",
"assets/assets/icons/mail.svg": "0b9d9f3181da6efb9671be23e99551b2",
"assets/assets/icons/light.svg": "036273fe7121fdd37cfbb6d3e8df1ac4",
"assets/assets/fonts/Fira_Sans/FiraSans-Medium.ttf": "f97963c595e8acb87013c1d4e1c3c9f9",
"assets/assets/fonts/Fira_Sans/FiraSans-Regular.ttf": "50e780b45678ae34cef52d3e5112bd0d",
"assets/assets/fonts/Fira_Sans/FiraSans-Bold.ttf": "382e230417d252a0cb16c7d491b030c7",
"assets/assets/fonts/Fira_Sans/FiraSans-SemiBold.ttf": "eb5e811f2fe0408c9d0a552fcf1fb390",
"assets/assets/fonts/Sigmar_One/SigmarOne-Regular.ttf": "9a721a3ad1f6ddd908c1a369b75a12cd",
"assets/assets/fonts/Inter/Inter_18pt-Medium.ttf": "8540f35bf8acd509b9ce356f1111e983",
"assets/assets/fonts/Inter/Inter_18pt-SemiBold.ttf": "e5532d993e2de30fa92422df0a8849dd",
"assets/assets/fonts/Inter/Inter_18pt-Regular.ttf": "37dcabff629c3690303739be2e0b3524",
"assets/assets/fonts/Inter/Inter_24pt-Bold.ttf": "8b04b3bd9435341377d7f4b4d68b6ecc",
"assets/assets/fonts/Poppins/Poppins-Regular.ttf": "093ee89be9ede30383f39a899c485a82",
"assets/assets/fonts/Poppins/Poppins-SemiBold.ttf": "6f1520d107205975713ba09df778f93f",
"assets/assets/fonts/Poppins/Poppins-Bold.ttf": "08c20a487911694291bd8c5de41315ad",
"assets/assets/fonts/Poppins/Poppins-Medium.ttf": "bf59c687bc6d3a70204d3944082c5cc0",
"assets/assets/images/university.png": "627da37fda113bf9931849672e08481e",
"assets/assets/images/background.jpg": "30045efca2ab738bf7c4237aaab0bef6",
"assets/assets/images/cattoosa_project.png": "8a9479687bfe9c3c46dc2751bfabfe01",
"assets/assets/images/cellula_technologies_logo.jpg": "1ffbb3b82505d6aea7f7fbf1cb3762e9",
"assets/assets/images/flutter_logo.png": "280061a25e491cd2ab4a6ffd889bc66c",
"assets/assets/images/personal_img.jpeg": "2b4a7dd572e608134d5e7bac135dd687",
"assets/assets/images/out_or_not_project.png": "e5fd82706f22fed5b3c1faecb6255916",
"assets/assets/images/app_logo.png": "273780a96c012f5133868fcb9fa343cf",
"assets/assets/images/light_background.jpg": "2f5b802e2bfb54af533915561d544e8c",
"assets/assets/images/feastly_project.png": "00957f2d5d5736c8fe1afcd2c742c756",
"assets/assets/images/quickmart_project.jpg": "96fb26c803d48e6840379a9ab8564747",
"assets/assets/images/flutter_app_development.png": "4bcc71653669cb6b1c98b6975a7ed111",
"assets/AssetManifest.json": "b5b4809b14309341c19224a261bc4dc6",
"assets/fonts/MaterialIcons-Regular.otf": "c0ad29d56cfe3890223c02da3c6e0448",
"assets/FontManifest.json": "233924bfdc19c3dc9df006bb2ac8b8e4",
"favicon.png": "56cbdc2d236da641b56fc6a6d0e37cc2",
"icons/Icon-512.png": "4bc5b83745747bde529e5023e3be7f8f",
"icons/Icon-maskable-192.png": "5c3333f4785ca56c45c8d24a7c0635b6",
"icons/Icon-192.png": "5c3333f4785ca56c45c8d24a7c0635b6",
"icons/Icon-maskable-512.png": "4bc5b83745747bde529e5023e3be7f8f",
"flutter_bootstrap.js": "23fa054acbac342adeb258ca9b800940",
"version.json": "3c26f85907045e138fda40d62f6d1c7a"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
