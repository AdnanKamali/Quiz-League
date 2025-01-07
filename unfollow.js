var baseUrl =
  "https://www.instagram.com/api/v1/friendships/2207616853/followers/?count=25&search_surface=follow_list_page";
var url = baseUrl;

async function getFollowers(urlPath) {
  return await fetch(urlPath, {
    headers: {
      accept: "*/*",
      "accept-language": "en-US,en;q=0.9",
      priority: "u=1, i",
      "sec-ch-prefers-color-scheme": "dark",
      "sec-ch-ua":
        '"Microsoft Edge";v="131", "Chromium";v="131", "Not_A Brand";v="24"',
      "sec-ch-ua-full-version-list":
        '"Microsoft Edge";v="131.0.2903.99", "Chromium";v="131.0.6778.140", "Not_A Brand";v="24.0.0.0"',
      "sec-ch-ua-mobile": "?0",
      "sec-ch-ua-model": '""',
      "sec-ch-ua-platform": '"Windows"',
      "sec-ch-ua-platform-version": '"15.0.0"',
      "sec-fetch-dest": "empty",
      "sec-fetch-mode": "cors",
      "sec-fetch-site": "same-origin",
      "x-asbd-id": "129477",
      "x-csrftoken": "cPDhehnkP6LYvlG8vlBZw66V61KSsJUc",
      "x-ig-app-id": "936619743392459",
      "x-ig-www-claim": "hmac.AR32Ljs4_DykiwFnhV7bxQR0qyOaeyasHYRzDTh5j6PAbjD9",
      "x-requested-with": "XMLHttpRequest",
      "x-web-session-id": "4dx7j6:tgmp1f:tsuxfk",
    },
    referrer: "https://www.instagram.com/bnd__gallery/followers/",
    referrerPolicy: "strict-origin-when-cross-origin",
    body: null,
    method: "GET",
    mode: "cors",
    credentials: "include",
  });
}

async function unFollow(pk) {
  return await fetch(
    `https://www.instagram.com/api/v1/web/friendships/${pk}/remove_follower/`,
    {
      headers: {
        accept: "*/*",
        "accept-language": "en-US,en;q=0.9",
        "content-type": "application/x-www-form-urlencoded",
        priority: "u=1, i",
        "sec-ch-prefers-color-scheme": "dark",
        "sec-ch-ua":
          '"Microsoft Edge";v="131", "Chromium";v="131", "Not_A Brand";v="24"',
        "sec-ch-ua-full-version-list":
          '"Microsoft Edge";v="131.0.2903.99", "Chromium";v="131.0.6778.140", "Not_A Brand";v="24.0.0.0"',
        "sec-ch-ua-mobile": "?0",
        "sec-ch-ua-model": '""',
        "sec-ch-ua-platform": '"Windows"',
        "sec-ch-ua-platform-version": '"15.0.0"',
        "sec-fetch-dest": "empty",
        "sec-fetch-mode": "cors",
        "sec-fetch-site": "same-origin",
        "x-asbd-id": "129477",
        "x-csrftoken": "cPDhehnkP6LYvlG8vlBZw66V61KSsJUc",
        "x-ig-app-id": "936619743392459",
        "x-ig-www-claim":
          "hmac.AR32Ljs4_DykiwFnhV7bxQR0qyOaeyasHYRzDTh5j6PAbjD9",
        "x-instagram-ajax": "1019156953",
        "x-requested-with": "XMLHttpRequest",
        "x-web-session-id": "dm05jl:tgmp1f:tsuxfk",
      },
      referrer: "https://www.instagram.com/bnd__gallery/followers/",
      referrerPolicy: "strict-origin-when-cross-origin",
      body: null,
      method: "POST",
      mode: "cors",
      credentials: "include",
    }
  );
}

var bodyListPromise = await getFollowers(url);
var bodyList = await bodyListPromise.json();
url = baseUrl + "&max_id=" + bodyList.next_max_id;

var bodyListPromise = await getFollowers(url);
var bodyList = await bodyListPromise.json();

for (const element of bodyList.users) {
  const rndInt = Math.floor(Math.random() * 3) + 6;
  await new Promise((r) => setTimeout(r, rndInt * 1000));
  unFollow(element.pk);
}
