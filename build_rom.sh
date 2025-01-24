# sync rom
repo init --depth=1 --git-lfs --no-repo-verify -u https://github.com/Evolution-X/manifest.git -b udc -g default,-mips,-darwin,-notdefault
git clone https://github.com/maximka300/LocalManifest.git --depth 1 -b EvolutionX-14 .repo/local_manifests
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j8

# build rom
. build/envsetup.sh
lunch lineage_lavender-userdebug
m evolution
