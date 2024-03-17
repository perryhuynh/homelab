module.exports = {
    qbittorrentUrl: "http://qbittorrent.downloads.svc.cluster.local",
    action: "inject",
    apiAuth: false,
    delay: 30,
    duplicateCategories: true,
    includeEpisodes: false,
    includeNonVideos: true,
    matchMode: "safe",
    outputDir: "/config",
    port: process.env.CROSSSEED_PORT,
    skipRecheck: true,
    torrentDir: "/qbittorrent/qBittorrent/BT_backup",
    torznab: [
        "http://prowlarr.downloads.svc.cluster.local/1/api?apikey=" + process.env.PROWLARR_API_KEY, // BroadcastheNet
        "http://prowlarr.downloads.svc.cluster.local/2/api?apikey=" + process.env.PROWLARR_API_KEY, // AvistaZ
        "http://prowlarr.downloads.svc.cluster.local/4/api?apikey=" + process.env.PROWLARR_API_KEY, // PassThePopcorn
        "http://prowlarr.downloads.svc.cluster.local/11/api?apikey=" + process.env.PROWLARR_API_KEY, // Redacted.ch
        "http://prowlarr.downloads.svc.cluster.local/13/api?apikey=" + process.env.PROWLARR_API_KEY, // AnimeBytes
        "http://prowlarr.downloads.svc.cluster.local/14/api?apikey=" + process.env.PROWLARR_API_KEY  // Anthelion
    ]
};
