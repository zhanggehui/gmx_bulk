#### 能量最小化与平衡

```bash
cd /home/liufeng_pkuhpc/lustre3/zgh/gmx/gmx_bulk/md_scripts; gitget; cd $OLDPWD; \
source /home/liufeng_pkuhpc/lustre2/zgh/sub_job/auto_run.sh \
gmx cn_nl 1 /home/liufeng_pkuhpc/lustre3/zgh/gmx/gmx_bulk/md_scripts em.sh em

cd /home/liufeng_pkuhpc/lustre3/zgh/gmx/gmx_bulk/md_scripts; gitget; cd $OLDPWD; \
source /home/liufeng_pkuhpc/lustre2/zgh/sub_job/auto_run.sh \
gmx cn_nl 6 /home/liufeng_pkuhpc/lustre3/zgh/gmx/gmx_bulk/md_scripts npt-equ.sh nptequ

cd /home/liufeng_pkuhpc/lustre3/zgh/gmx/gmx_bulk/md_scripts; gitget; cd $OLDPWD; \
source /home/liufeng_pkuhpc/lustre2/zgh/sub_job/auto_run.sh \
gmx cn_nl 6 /home/liufeng_pkuhpc/lustre3/zgh/gmx/gmx_bulk/md_scripts nvt-equ.sh nvtequ
```


#### 分析

```bash
cd /home/liufeng_pkuhpc/lustre3/zgh/gmx/gmx_bulk/md_scripts; gitget; cd $OLDPWD; \
source /home/liufeng_pkuhpc/lustre2/zgh/sub_job/auto_run.sh \
gmx cn_nl 1 /home/liufeng_pkuhpc/lustre3/zgh/gmx/gmx_bulk/md_scripts/analysis rdf_ion.sh rdf_bulk
```


#### 多任务提交

```bash
cd /home/liufeng_pkuhpc/lustre3/zgh/gmx/gmx_bulk/md_scripts; gitget; cd $OLDPWD; \
source /home/liufeng_pkuhpc/lustre3/zgh/gmx/gmx_bulk/md_scripts/ion_loop.sh npt cn_nl 6
# em nvt npt rdf res_t
```
