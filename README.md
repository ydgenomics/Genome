# Genome
Genome includes many base pairs, revealing its structure/position and function is our interests.

# The Annotation of Genome


---

```shell
# build environment of EVidenceModeler
source /opt/software/miniconda3/bin/activate
conda create -n evm -y
conda activate evm
conda install bioconda::evidencemodeler -y
conda install bioconda::gffread -y
conda install -c bioconda agat -y
```

---
数据质控-组装-注释
**THINK:** 基因组组装和注释，测序拿到的序列为*read*，*read*分长短，二代为短，三代测序为长，通过加测序深度可以找到*read*间重叠部分，进而实现*read*间的连接得到整个基因序列。在做这一步之前应该还有*read*质控，并不是所有的*read*都会在这个组装考虑之中，所以什么样的的*read*才算可以作为考虑的*read* [测序数据质量控制:一键完成质量过滤、去重复与序列修剪](https://mp.weixin.qq.com/s/qgcYSrUwyOFAlFwfp1_Knw) [fastq和fasta格式文件](https://mp.weixin.qq.com/s/t-Z0S-1ByqAWAf3IZ4YA4w) [二、RNA-seq数据分析系列教程：FASTA与FASTQ文件格式解读学习](https://mp.weixin.qq.com/s/zAjplLsCgvDuydxxkNEksQ) [学习笔记丨fasta与fastq格式相互转换，使用Python脚本轻松实现！](https://mp.weixin.qq.com/s/POE4EkSmnK7fMcNDjpWCcw) 。数据组装分有参和无参两种 [基因组组装全攻略：从线粒体到全基因组](https://mp.weixin.qq.com/s/zmLAgaA96SKVl10xouSnYA)，构建T2T

- 基因组组装 拿到染色体水平的fasta序列文件
  - [基因组组装质量评估](https://mp.weixin.qq.com/s?__biz=Mzk0MzcxMjE2NQ==&mid=2247483812&idx=1&sn=d1d6560b66d82dc79a5e20ec94f3e98b&chksm=c32ef36ef4597a789106d0651e52a5117db922ca1bacc2c31730ea4074c11d258158dd633027&cur_album_id=3499519268306288641&scene=189#wechat_redirect)
    - BUSCO 完整性是基因组组装质量评估的主要参数，是基因组项目的第一个重要指标。一般而言，C值在95%以上的基因组，可认为具有较高的完整性，质量较高
  - [重复序列预测与屏蔽](https://mp.weixin.qq.com/s?__biz=Mzk0MzcxMjE2NQ==&mid=2247483978&idx=1&sn=f9729bb0d606305040b7d3f2a3c37fbd&chksm=c32ef080f4597996dbb14c5d200a5374c60244f49ba60a0aee73d37ef6cb9643a6c76592b3e3&cur_album_id=3499519268306288641&scene=189#wechat_redirect)
- 基因注释
  - 基因结构注释
    - [基于转录组](https://mp.weixin.qq.com/s?__biz=Mzk0MzcxMjE2NQ==&mid=2247484159&idx=1&sn=6c21376588fefbdc99500e617526c011&chksm=c32ef035f45979237e45f780ea45ba7c9483ae8a4970c52b31a829840a2105bb80c8232921cc&cur_album_id=3499519268306288641&scene=189#wechat_redirect)
      - hisat2+stringtie
    - [基于同源蛋白](https://mp.weixin.qq.com/s?__biz=Mzk0MzcxMjE2NQ==&mid=2247484059&idx=1&sn=9cc58b12b8b7ca172ff7921ac17afbef&chksm=c32ef051f4597947fbf1b72d06e8d3682e7753eebd291a63b264adacca74934e8a77080173c6&cur_album_id=3499519268306288641&scene=189#wechat_redirect)
      - miniprot
    - [基于从头预测](https://mp.weixin.qq.com/s?__biz=Mzk0MzcxMjE2NQ==&mid=2247484018&idx=1&sn=43d9cd37062c18dd2bfb2bda1b773e62&chksm=c32ef0b8f45979aea0a8b68df509d80b1eedcd5f3d8f3afb7aa17a89dd4da5f0410c2aafc849&cur_album_id=3499519268306288641&scene=189#wechat_redirect)
      - Braker2
    - [基因注释证据整合](https://mp.weixin.qq.com/s?__biz=Mzk0MzcxMjE2NQ==&mid=2247484173&idx=1&sn=48a46f047f2dfe85490f632c34a2ee95&chksm=c32ef1c7f45978d1ad705d8058f9cf99a2952b7fe889e0571f0726c9feca799127ff9fa9066b&cur_album_id=3499519268306288641&scene=189#wechat_redirect)
      - EVM
    - [利用 TransposonPSI 去除转座子基因](https://mp.weixin.qq.com/s?__biz=Mzk0MzcxMjE2NQ==&mid=2247484178&idx=1&sn=b982fa5d3d5ef4b70353f40931bdfd8a&chksm=c32ef1d8f45978ce70afc3896d56592022f8104aa285f01df1c636c0ddc898196bef65024645&cur_album_id=3499519268306288641&scene=189#wechat_redirect)
    - [利用 OMArk 进行基因组注释结果评估](https://mp.weixin.qq.com/s?__biz=Mzk0MzcxMjE2NQ==&mid=2247484507&idx=1&sn=f69757bf706881f0373f138d52ef10fd&chksm=c32ef691f4597f875fcb4d1dd77782fc37a3c97d29634ec5639c858fa1054b9103e051b0543c&cur_album_id=3499519268306288641&scene=189#wechat_redirect)
  - 基因功能注释

- 应该注释出那些内容？
- 注释文件(.gtf/.gff)应该怎么来看？
- 基因组结构注释的证据有哪些？对应使用的工具又是那些？
- 对于多证据注释的结果怎么整合起来(已有的多证据集中工具或外部整合工具EVM)
- 最好评估基因结构注释的质量

PROBLEM:
- gtf转gff
- EVM是否可以只支持两种输入的gff

[从零开始基因组注释（一）| 原理介绍](https://mp.weixin.qq.com/s/f6E1bHd-WokVGOpahzqS8w)
[从零开始基因组注释（二）| 基因组完整性评估](https://mp.weixin.qq.com/s/KVeWY-l1yaU27Nuc-fktTg)
[从零开始基因组注释（三）| 基因组重复序列预测与屏蔽]()

**Q&A:**
  - 测序深度

[生物学功能注释三板斧](https://mp.weixin.qq.com/s/YVNOeYEIvh7adXb4nSOO5A)
[braker3--基因结构注释](https://mp.weixin.qq.com/s/R9kxyTfjkZ_iTs0mqwNFKw)
[一个染色体组级别的基因组注释全流程代码分享](https://mp.weixin.qq.com/s/ZFAbzxRgf4E0OqRQLkte5w)

# Reference & Citation
- [GFF和GTF文件的处理和应用](https://mp.weixin.qq.com/s/zP_EPm_bD3S0ti6Gg0mVJg)
- 序列名词 [基因序列中的一些名词区别（CDS、Exon、Intron、UTR、ORF、启动子、TF等）](https://zhuanlan.zhihu.com/p/557609219)
- [工具分享|agat:高效玩转GTF/GFF基因注释文件](https://mp.weixin.qq.com/s/U14Y-qAqvh9BjyiG1nSR1A) 
- [website ATAG](https://agat.readthedocs.io/en/latest/index.html)

- [LiftOn 基因组注释迁移工具](https://mp.weixin.qq.com/s/SZEFfG8Q6qwlj9Fxb_ostw)
- [Liftoff：基于参考基因组的基因组注释](https://mp.weixin.qq.com/s/jiG1QVBQQfhdSMzmucCIJw)

- [使用OMArk评估基因组注释](https://mp.weixin.qq.com/s/eacxbwZQhXtZM8BJ6BS3dg)
- [【NBT】比BUSCO还准的基因准确性评估工具OMArk](https://mp.weixin.qq.com/s/3VPr21liOB_TWXgPM8tPZA)
- [提取最长转录本以及用BUSCO评估基因注释的完整性](https://mp.weixin.qq.com/s/hiOtkY80kQQFKd2GjqbRkQ)
- [BUSCO：基因组组装质量和完整性评估](https://mp.weixin.qq.com/s/uyZ59ZxCSinBUtxd75akgw) *BUSCO是评估组装完整性的工具*
- [QUAST|基因组评估（一）：质量评估和完整性评估](https://mp.weixin.qq.com/s/tPM0DJ8pAIaIKUu27WDjxw)

- [从零开始基因组注释（七）| EVidenceModeler 基因结构证据整合](https://mp.weixin.qq.com/s/q-bEHXu8Vu0Y8hUPwuAvrA)
- [EVidenceModeler整合基因组注释结果](https://mp.weixin.qq.com/s/3Brjr8mBnP7O70ba0aABJQ)
- [关于基因结构注释的一些感悟](http://xuzhougeng.com/archives/reflections-on-gene-structure-annotation)
