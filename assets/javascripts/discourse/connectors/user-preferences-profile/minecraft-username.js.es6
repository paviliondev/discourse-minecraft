export default {
  shouldRender(attrs, ctx) {
    return attrs.model.trust_level >= ctx.siteSettings.minecraft_whitelist_trust_level;
  }
};
