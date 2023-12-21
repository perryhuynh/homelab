module.exports = {
    qbittorrentUrl: "http://qbittorrent.downloads.svc.cluster.local",
    action: "inject",
    apiAuth: false,
    dataDirs: [
        "/downloads/lidarr",
        "/downloads/radarr",
        "/downloads/sonarr"
    ],
    dataCategory: "cross-seed",
    delay: 30,
    duplicateCategories: true,
    excludeRecentSearch: "26 weeks",
    includeEpisodes: false,
    includeNonVideos: true,
    linkDir: "/downloads/cross-seed",
    linkType: "hardlink",
    matchMode: "safe",
    maxDataDepth: 1,
    outputDir: "/config/xseeds",
    port: process.env.CROSSSEED_PORT,
    searchCadence: "4 weeks",
    skipRecheck: true,
    torrentDir: "/config/qBittorrent/BT_backup",
    torznab: [
        "http://prowlarr.downloads.svc.cluster.local/1/api?apikey=" + process.env.PROWLARR_API_KEY, // BroadcastheNet
        "http://prowlarr.downloads.svc.cluster.local/2/api?apikey=" + process.env.PROWLARR_API_KEY, // AvistaZ
        "http://prowlarr.downloads.svc.cluster.local/4/api?apikey=" + process.env.PROWLARR_API_KEY, // PassThePopcorn
        "http://prowlarr.downloads.svc.cluster.local/11/api?apikey=" + process.env.PROWLARR_API_KEY, // Redacted.ch
        "http://prowlarr.downloads.svc.cluster.local/13/api?apikey=" + process.env.PROWLARR_API_KEY, // AnimeBytes
        "http://prowlarr.downloads.svc.cluster.local/14/api?apikey=" + process.env.PROWLARR_API_KEY  // Anthelion
    ]
};
