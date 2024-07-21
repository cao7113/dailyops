# OrbStack

https://docs.orbstack.dev/quick-start

```
ansible -i inventory.yml box1 -m apt -a "pkg=snapd state=present" --become
ansible -i inventory.yml ubox1 -m community.general.snap -a "name=task state=present classic=true" --become -vvv
```
