set -ex

if [ ! -n "$1" ]; then
    VER=`git tag | grep -v "v" | tail -n 1 |  python3 -c "import sys; vers = sys.stdin.readline().strip().split('.'); print('.'.join([*vers[:2], str(int(vers[2])+1)]))"`
else
    VER="$1"
fi
git tag $VER
git push -u origin ${VER}

docker buildx build --platform linux/amd64 -t registry.cn-guangzhou.aliyuncs.com/seig/imagesite:$VER .
#docker build -t registry.cn-guangzhou.aliyuncs.com/seig/imagesite:$VER .
docker push registry.cn-guangzhou.aliyuncs.com/seig/imagesite:$VER
echo registry.cn-guangzhou.aliyuncs.com/seig/imagesite:$VER
