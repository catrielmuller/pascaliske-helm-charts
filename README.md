# [`helm`-charts](https://charts.pascaliske.dev)

> Another repository with lightweight Helm Charts.

[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/pascaliske&style=flat-square)](https://artifacthub.io/packages/search?repo=pascaliske) [![Test Status](https://img.shields.io/github/workflow/status/pascaliske/helm-charts/Test%20Charts/master?label=test&style=flat-square)](https://github.com/pascaliske/helm-charts/actions/workflows/test.yml) [![Build Status](https://img.shields.io/github/workflow/status/pascaliske/helm-charts/Release%20Charts/master?label=build&style=flat-square)](https://github.com/pascaliske/helm-charts/actions/workflows/release.yml) ![GitHub Last Release](https://img.shields.io/github/release-date/pascaliske/helm-charts?label=last%20release&style=flat-square) [![GitHub Last Commit](https://img.shields.io/github/last-commit/pascaliske/helm-charts?style=flat-square)](https://github.com/pascaliske/helm-charts) [![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg?style=flat-square)](https://opensource.org/licenses/MIT) [![Awesome Badges](https://img.shields.io/badge/badges-awesome-green.svg?color=blue&style=flat-square)](https://github.com/Naereen/badges)

<!-- prettier-ignore-start -->
<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-1-orange.svg?style=flat-square)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->
<!-- prettier-ignore-end -->

## Usage

[Helm](https://helm.sh) must be installed to use the charts. Please refer to Helm's [documentation](https://helm.sh/docs) to get started. Once Helm has been set up correctly, add the repo as follows:

```sh
helm repo add pascaliske https://charts.pascaliske.dev
```

If you had already added this repo earlier, run `helm repo update` to retrieve the latest versions of the packages. Use `helm search repo pascaliske` to see a list of all available charts.

You can install a chart release using the following command:

```sh
helm install <release> pascaliske/<chart> --values values.yaml
```

To uninstall a chart release use `helm`'s delete command:

```sh
helm delete <chart>
```

## Charts

| Chart                                                                             | Version |     AppVersion     |
| --------------------------------------------------------------------------------- | :-----: | :----------------: |
| [`cloudflare-dyndns`](https://charts.pascaliske.dev/charts/cloudflare-dyndns/)    | `0.0.5` |      `0.0.3`       |
| [`cloudflared`](https://charts.pascaliske.dev/charts/cloudflared)                 | `1.4.0` |     `2022.8.0`     |
| [`code-server`](https://charts.pascaliske.dev/charts/code-server)                 | `0.3.2` |      `4.4.0`       |
| [`digitalocean-dyndns`](https://charts.pascaliske.dev/charts/digitalocean-dyndns) | `0.2.4` |      `0.0.3`       |
| [`fritzbox-exporter`](https://charts.pascaliske.dev/charts/fritzbox-exporter)     | `1.1.0` |       `1.0`        |
| [`gitlab`](https://charts.pascaliske.dev/charts/gitlab)                           | `1.3.0` |   `15.4.0-ce.0`    |
| [`homer`](https://charts.pascaliske.dev/charts/homer)                             | `0.2.0` |     `v22.07.2`     |
| [`linkding`](https://charts.pascaliske.dev/charts/linkding)                       | `0.1.0` |      `1.11.0`      |
| [`paperless`](https://charts.pascaliske.dev/charts/paperless)                     | `1.0.1` |      `1.8.0`       |
| [`prometheus`](https://charts.pascaliske.dev/charts/prometheus)                   | `1.3.0` |     `v2.34.0`      |
| [`redis`](https://charts.pascaliske.dev/charts/redis)                             | `0.1.1` |      `7.0.5`       |
| [`snapdrop`](https://charts.pascaliske.dev/charts/snapdrop)                       | `0.1.0` | `version-724f0af5` |
| [`traefik-errors`](https://charts.pascaliske.dev/charts/traefik-errors)           | `2.2.3` |      `1.0.4`       |
| [`uptime-kuma`](https://charts.pascaliske.dev/charts/uptime-kuma)                 | `0.3.1` |      `1.17.1`      |

## Contributors

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tr>
    <td align="center"><a href="https://www.b1-systems.de"><img src="https://avatars.githubusercontent.com/u/26167225?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Johannes Kastl</b></sub></a><br /><a href="https://github.com/pascaliske/helm-charts/commits?author=johanneskastl" title="Code">💻</a> <a href="https://github.com/pascaliske/helm-charts/commits?author=johanneskastl" title="Documentation">📖</a></td>
  </tr>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!

## License

[MIT](LICENSE.md) – © 2022 [Pascal Iske](https://pascaliske.dev)
