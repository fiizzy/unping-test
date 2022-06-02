'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "6014636174d8416e9a216ff983786383",
"index.html": "54c60c02932b949aea17e96ac23f9f10",
"/": "54c60c02932b949aea17e96ac23f9f10",
"main.dart.js": "4708e8795d1615e3f27c7baa00b84dc2",
"flutter.js": "0816e65a103ba8ba51b174eeeeb2cb67",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "1d03e0fd6eeb3504a9e52eb452c9f710",
"assets/AssetManifest.json": "3decdabba12da1c42410d877cf8c927e",
"assets/NOTICES": "8995c53506580be34998db17fbdff6d7",
"assets/FontManifest.json": "9bb9176d1c539affc0c98fecfe9bf710",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/mayjuun_design_system/assets/avatars/Female_large_2.png": "486f6406cc62260bbb6b309bfcda177a",
"assets/packages/mayjuun_design_system/assets/avatars/Male_large_9.png": "b5155f365f06918e77d7282549ae8882",
"assets/packages/mayjuun_design_system/assets/avatars/Male_small_4.png": "624926dbf3485af18f78fd34751018bc",
"assets/packages/mayjuun_design_system/assets/avatars/Male_small_5.png": "0a2a86586649f7569c35146025830fea",
"assets/packages/mayjuun_design_system/assets/avatars/Male_large_8.png": "acd2e810304cd8d7dce145849de8858c",
"assets/packages/mayjuun_design_system/assets/avatars/Female_large_3.png": "58119ca46b38cb112cb8263acedf943a",
"assets/packages/mayjuun_design_system/assets/avatars/Nuetral_medium.png": "2a4083d5a7e3d77d51cbb8eb8e7834f8",
"assets/packages/mayjuun_design_system/assets/avatars/Male_medium_9.png": "790055c218ec671aa029c31330bf1f93",
"assets/packages/mayjuun_design_system/assets/avatars/Female_large_1.png": "42547c210774ba05f1ae00922d551aef",
"assets/packages/mayjuun_design_system/assets/avatars/Male_small_7.png": "9183f11db72ed23b39a21db018167d07",
"assets/packages/mayjuun_design_system/assets/avatars/Male_small_6.png": "548b4c77c6a6c540d0673a27f017173e",
"assets/packages/mayjuun_design_system/assets/avatars/Male_medium_8.png": "4b2ed403fbc23d54a45c9d7d3bce679b",
"assets/packages/mayjuun_design_system/assets/avatars/Male_medium_10.png": "9752c07b7a759269f97f339f1e349c7a",
"assets/packages/mayjuun_design_system/assets/avatars/Female_large_4.png": "dfbaf683b269488beeda92eb71efc22d",
"assets/packages/mayjuun_design_system/assets/avatars/Male_small_2.png": "e5274dc6bc120c52ab2b16f7ba8c3f4f",
"assets/packages/mayjuun_design_system/assets/avatars/Female_small_9.png": "138d5828f9b643dfa04a0a5c2605149c",
"assets/packages/mayjuun_design_system/assets/avatars/Female_small_8.png": "32e2ba916a6e91147054c4d26094d8bc",
"assets/packages/mayjuun_design_system/assets/avatars/Male_small_3.png": "b2509ee265de4f4d64ccd2fbb19a9cd3",
"assets/packages/mayjuun_design_system/assets/avatars/Female_large_5.png": "825fc2656be9dd59f502b21186ceda8d",
"assets/packages/mayjuun_design_system/assets/avatars/Female_large_7.png": "d9396c7482e11384b41bc9e5a7877bd6",
"assets/packages/mayjuun_design_system/assets/avatars/Female_medium_10.png": "05047c808a97adb80878f5ef4bbb9394",
"assets/packages/mayjuun_design_system/assets/avatars/Female_medium_9.png": "d19f8fdbf9ab5148835bebeefa02dff0",
"assets/packages/mayjuun_design_system/assets/avatars/Male_small_1.png": "9737738b9055d56bf10bf63777ca5321",
"assets/packages/mayjuun_design_system/assets/avatars/Female_medium_8.png": "609edbf8d1293e14c49d7b98391db6e9",
"assets/packages/mayjuun_design_system/assets/avatars/Female_large_6.png": "75de09a6f93b579af741bb2db56a4744",
"assets/packages/mayjuun_design_system/assets/avatars/Male_medium_3.png": "42b5aace9f028f2b4693cf7317724031",
"assets/packages/mayjuun_design_system/assets/avatars/Female_medium_5.png": "3dd2c6648ed8d88fd4d58857e08d1fc8",
"assets/packages/mayjuun_design_system/assets/avatars/Female_small_6.png": "77e5949b2338e84076662eac3aa2a93f",
"assets/packages/mayjuun_design_system/assets/avatars/Female_small_7.png": "3e2c3addc6d5ce0576cb4aed2a408b99",
"assets/packages/mayjuun_design_system/assets/avatars/Female_medium_4.png": "37a5b203b71b0f507e8ebf512d99ae1d",
"assets/packages/mayjuun_design_system/assets/avatars/Male_large_1.png": "b74f84bd058708385d1103f5cbc038fa",
"assets/packages/mayjuun_design_system/assets/avatars/Male_large_10.png": "eee761ab9a06d3e2ab45eb723f37920c",
"assets/packages/mayjuun_design_system/assets/avatars/Male_medium_2.png": "6c49c4c22159f23f5ee7e05a5fe97fea",
"assets/packages/mayjuun_design_system/assets/avatars/Nuetral_small.png": "ddb27e306aa8ffd24790117607d371ad",
"assets/packages/mayjuun_design_system/assets/avatars/Female_large_8.png": "6a6addd297dc52ba5ccb0dd9e07400dc",
"assets/packages/mayjuun_design_system/assets/avatars/Male_large_3.png": "3ab70fe1bbc0d0a6ad66c7f9ca25afd3",
"assets/packages/mayjuun_design_system/assets/avatars/Female_medium_6.png": "d3bfd9d4a7dc22d5134a2fdcec9036f0",
"assets/packages/mayjuun_design_system/assets/avatars/Female_small_5.png": "da0e7483b5c40ff11cb5cb71080fb325",
"assets/packages/mayjuun_design_system/assets/avatars/Female_small_10.png": "d684617b7673d65c9fb84a06456d4330",
"assets/packages/mayjuun_design_system/assets/avatars/Female_small_4.png": "bdd70f68ab92b7be58ec9c01a6ebd2ac",
"assets/packages/mayjuun_design_system/assets/avatars/Female_medium_7.png": "8b9807bf8414e7ad7152d1dc00562949",
"assets/packages/mayjuun_design_system/assets/avatars/Male_large_2.png": "021c6f9844455901b2c47d32a59bb8b6",
"assets/packages/mayjuun_design_system/assets/avatars/Female_large_9.png": "15224c2012ffa2f7254e9ca8fbc3ce9a",
"assets/packages/mayjuun_design_system/assets/avatars/Male_medium_1.png": "4222a30f1e10b0609c72e28ba5e4dd89",
"assets/packages/mayjuun_design_system/assets/avatars/Male_medium_5.png": "05ab518ec12344d10cbc0cc8a910a885",
"assets/packages/mayjuun_design_system/assets/avatars/Male_large_6.png": "52d7cf2c3add642edac8c941a865b840",
"assets/packages/mayjuun_design_system/assets/avatars/Female_medium_3.png": "53764c7746e0385cc5f61717aeff5fb9",
"assets/packages/mayjuun_design_system/assets/avatars/Female_large_10.png": "482ac2ff395bc1f2fa1a8e5824e043b5",
"assets/packages/mayjuun_design_system/assets/avatars/Female_medium_2.png": "2a6a84772fd57736778ffad647eedacc",
"assets/packages/mayjuun_design_system/assets/avatars/Female_small_1.png": "375281411314c3ac8f938161d5da93b6",
"assets/packages/mayjuun_design_system/assets/avatars/Nuetral_large.png": "51c556405b97f6c3cf6883927796e4e4",
"assets/packages/mayjuun_design_system/assets/avatars/Male_large_7.png": "aea1143a1148dcf814535f05a19f8770",
"assets/packages/mayjuun_design_system/assets/avatars/Male_medium_4.png": "8189430be131934a9360c41912ccc5c7",
"assets/packages/mayjuun_design_system/assets/avatars/Male_medium_6.png": "bcb1b23a92e6f2009e5ca8669fb9c83e",
"assets/packages/mayjuun_design_system/assets/avatars/Male_large_5.png": "72d2ed2920eb14eb223012005dc4caeb",
"assets/packages/mayjuun_design_system/assets/avatars/Male_small_8.png": "c67d0b93ea503e8250499851bcddefc8",
"assets/packages/mayjuun_design_system/assets/avatars/Female_small_3.png": "4c252b46d819cf3963f9ccc817ce834d",
"assets/packages/mayjuun_design_system/assets/avatars/Female_medium_1.png": "09e6e17c5fb820bddf671d2998dff902",
"assets/packages/mayjuun_design_system/assets/avatars/Female_small_2.png": "575508009b4301970fe5eaede5629243",
"assets/packages/mayjuun_design_system/assets/avatars/Male_small_9.png": "0db821934da6f88c3c7272ffe5578304",
"assets/packages/mayjuun_design_system/assets/avatars/Male_large_4.png": "7b8c2de8c8f9c23725d785aa6d6aade9",
"assets/packages/mayjuun_design_system/assets/avatars/Male_medium_7.png": "e47ee3d5988b6753af43d53b6e383071",
"assets/packages/mayjuun_design_system/assets/avatars/Male_small_10.png": "bacca11e69bf6069ad9952094adbd7f7",
"assets/packages/mayjuun_design_system/assets/fonts/Inter-Medium.ttf": "1aa99aa25c72307cb7f16fae35e8c9d1",
"assets/packages/mayjuun_design_system/assets/fonts/Inter-Light.ttf": "d4be01c95657978131342b1dcf829a45",
"assets/packages/mayjuun_design_system/assets/fonts/Inter-Variable.ttf": "bcdd27d42b03f75c010c6ea3430c6453",
"assets/packages/mayjuun_design_system/assets/fonts/Inter-Bold.ttf": "cef517a165e8157d9f14a0911190948d",
"assets/packages/mayjuun_design_system/assets/fonts/Inter-Regular.ttf": "eba360005eef21ac6807e45dc8422042",
"assets/packages/mayjuun_design_system/assets/fonts/Inter-ExtraLight.ttf": "819a76705047d6474cb529a319e74bbc",
"assets/packages/mayjuun_design_system/assets/fonts/Inter-Black.ttf": "c6dacb6bcfcd747bba440bf2fbd2c85a",
"assets/packages/mayjuun_design_system/assets/fonts/Inter-SemiBold.ttf": "3e87064b7567bef4ecd2ba977ce028bc",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
