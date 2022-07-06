FROM netboxcommunity/netbox:latest

RUN set -x \
  && source /opt/netbox/venv/bin/activate \
  && SITEDIR=$(/opt/netbox/venv/bin/python3 -c 'import site; print(site.getsitepackages()[0])') \
  && pip install netbox-topology-views \
  && cp -r $SITEDIR/netbox_topology_views/static/netbox_topology_views /opt/netbox/netbox/static/
