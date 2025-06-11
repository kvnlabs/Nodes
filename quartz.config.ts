import { QuartzConfig } from "./quartz/cfg"
import * as Plugin from "./quartz/plugins"


const config: QuartzConfig = {
  configuration: {
    pageTitle: "Nodes",
    pageTitleSuffix: " | Second Brain",

    enableSPA: true,
    enablePopovers: true,
    analytics: {
      provider: 'posthog', apiKey: 'phc_lvyngIHZ9IQP8oDCSw8sEuypydEjktkHo9HSdDZrO2n', host: 'https://eu.i.posthog.com',
    },
    locale: "en-US",
    baseUrl: "blog.thekavin.com",
    ignorePatterns: ["private", "templates", ".obsidian"],
    defaultDateType: "modified",
    theme: {
      fontOrigin: "googleFonts",
      cdnCaching: true,
      typography: {
        header: "NType82-Headline",
        body: "Source Sans Pro", 
        code: "Fira Code",
      },
      colors: {
        lightMode: {
          light: "#ffffff",
          lightgray: "#f8f9fa",
          gray: "#6c757d",
          darkgray: "#495057",
          dark: "#212529",
          secondary: "#ec2127",
          tertiary: "#8672db",
          highlight: "rgba(143, 159, 169, 0.15)",
          textHighlight: "#fff23688",
        },
        darkMode: {
          light: "#0d1117",
          lightgray: "#21262d",
          gray: "#7d8590",
          darkgray: "#c9d1d9",
          dark: "#f0f6fc",
          secondary: "#ec2127",
          tertiary: "#8672db",
          highlight: "rgba(143, 159, 169, 0.15)",
          textHighlight: "#b3aa0288",
        },
      },
    },
  },
  plugins: {
    transformers: [
      Plugin.FrontMatter(),
      Plugin.CreatedModifiedDate({
        priority: ["frontmatter", "git", "filesystem"],
      }),
      Plugin.SyntaxHighlighting({
        theme: {
          light: "github-light",
          dark: "github-dark",
        },
        keepBackground: false,
      }),
      Plugin.ObsidianFlavoredMarkdown({ enableInHtmlEmbed: false }),
      Plugin.GitHubFlavoredMarkdown(),
      Plugin.TableOfContents({ maxDepth: 3 }),
      Plugin.CrawlLinks({ markdownLinkResolution: "shortest" }),
      Plugin.Description(),
      Plugin.Latex({ renderEngine: "katex" }),
    ],
    filters: [Plugin.RemoveDrafts()],
    emitters: [
      Plugin.AliasRedirects(),
      Plugin.ComponentResources(),
      Plugin.ContentPage(),
      Plugin.FolderPage(),
      Plugin.TagPage(), 
      Plugin.ContentIndex({
        enableSiteMap: true,
        enableRSS: true,
      }),
      Plugin.Assets(),
      Plugin.Static(),
      Plugin.Favicon(),
      Plugin.NotFoundPage(),
      // Custom OG Images disabled while using custom fonts
      // Plugin.CustomOgImages(),
    ],
  },
}

export default config
