import { tracked } from "@glimmer/tracking";
import Controller from "@ember/controller";
import { service } from "@ember/service";

export default class SponsorsController extends Controller {
  @service siteSettings;

  @tracked sortedSponsors = [];

  init() {
    super.init(...arguments);
    this.processSponsorsData();
  }

  processSponsorsData() {
    let sponsorsData;
    try {
      sponsorsData = JSON.parse(this.siteSettings.VC_sponsors_data);
    } catch {
      return;
    }

    if (typeof sponsorsData !== "object" || sponsorsData === null) {
      return;
    }

    // Convert the parsed JSON object to an array of entries, sort by keys, and map to the desired format.
    this.sortedSponsors = Object.entries(sponsorsData)
      .sort(([keyA], [keyB]) => parseInt(keyA, 10) - parseInt(keyB, 10)) // Sort by numeric key.
      .map(([key, url]) => ({ key, url }));
  }
}
