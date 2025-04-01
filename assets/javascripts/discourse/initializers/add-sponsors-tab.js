import { withPluginApi } from "discourse/lib/plugin-api";

export default {
  name: "add-sponsors-tab",

  initialize() {
    withPluginApi("0.8", (api) => {
      api.addNavigationBarItem({
        name: "custom_sponsors",
        displayName: "Sponsors",
        title: "Our Sponsors",
        href: "/sponsors",
        forceActive: (category, args, router) =>
          router.currentURL.includes("/sponsors"),
      });
    });
  },
};
