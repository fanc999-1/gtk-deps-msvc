# Objects and sources

ICU_STUB_DATA_OBJS =	\
	$(CFG)\$(PLAT)\stubdata\stubdata.obj	\
	$(CFG)\$(PLAT)\stubdata\icudt.res

ICU_UC_OBJS =	\
	$(CFG)\$(PLAT)\common\appendable.obj	\
	$(CFG)\$(PLAT)\common\bmpset.obj	\
	$(CFG)\$(PLAT)\common\brkeng.obj	\
	$(CFG)\$(PLAT)\common\brkiter.obj	\
	$(CFG)\$(PLAT)\common\bytestream.obj	\
	$(CFG)\$(PLAT)\common\bytestrie.obj	\
	$(CFG)\$(PLAT)\common\bytestriebuilder.obj	\
	$(CFG)\$(PLAT)\common\bytestrieiterator.obj	\
	$(CFG)\$(PLAT)\common\caniter.obj	\
	$(CFG)\$(PLAT)\common\chariter.obj	\
	$(CFG)\$(PLAT)\common\charstr.obj	\
	$(CFG)\$(PLAT)\common\cmemory.obj	\
	$(CFG)\$(PLAT)\common\cstring.obj	\
	$(CFG)\$(PLAT)\common\cstr.obj	\
	$(CFG)\$(PLAT)\common\cwchar.obj	\
	$(CFG)\$(PLAT)\common\dictbe.obj	\
	$(CFG)\$(PLAT)\common\dictionarydata.obj	\
	$(CFG)\$(PLAT)\common\dtintrv.obj	\
	$(CFG)\$(PLAT)\common\errorcode.obj	\
	$(CFG)\$(PLAT)\common\filteredbrk.obj	\
	$(CFG)\$(PLAT)\common\filterednormalizer2.obj	\
	$(CFG)\$(PLAT)\common\icudataver.obj	\
	$(CFG)\$(PLAT)\common\icuplug.obj	\
	$(CFG)\$(PLAT)\common\listformatter.obj	\
	$(CFG)\$(PLAT)\common\loadednormalizer2impl.obj	\
	$(CFG)\$(PLAT)\common\locavailable.obj	\
	$(CFG)\$(PLAT)\common\locbased.obj	\
	$(CFG)\$(PLAT)\common\locdispnames.obj	\
	$(CFG)\$(PLAT)\common\locdspnm.obj	\
	$(CFG)\$(PLAT)\common\locid.obj	\
	$(CFG)\$(PLAT)\common\loclikely.obj	\
	$(CFG)\$(PLAT)\common\locmap.obj	\
	$(CFG)\$(PLAT)\common\locresdata.obj	\
	$(CFG)\$(PLAT)\common\locutil.obj	\
	$(CFG)\$(PLAT)\common\messagepattern.obj	\
	$(CFG)\$(PLAT)\common\normalizer2.obj	\
	$(CFG)\$(PLAT)\common\normalizer2impl.obj	\
	$(CFG)\$(PLAT)\common\normlzr.obj	\
	$(CFG)\$(PLAT)\common\parsepos.obj	\
	$(CFG)\$(PLAT)\common\patternprops.obj	\
	$(CFG)\$(PLAT)\common\pluralmap.obj	\
	$(CFG)\$(PLAT)\common\propname.obj	\
	$(CFG)\$(PLAT)\common\propsvec.obj	\
	$(CFG)\$(PLAT)\common\punycode.obj	\
	$(CFG)\$(PLAT)\common\putil.obj	\
	$(CFG)\$(PLAT)\common\rbbi.obj	\
	$(CFG)\$(PLAT)\common\rbbidata.obj	\
	$(CFG)\$(PLAT)\common\rbbinode.obj	\
	$(CFG)\$(PLAT)\common\rbbirb.obj	\
	$(CFG)\$(PLAT)\common\rbbiscan.obj	\
	$(CFG)\$(PLAT)\common\rbbisetb.obj	\
	$(CFG)\$(PLAT)\common\rbbistbl.obj	\
	$(CFG)\$(PLAT)\common\rbbitblb.obj	\
	$(CFG)\$(PLAT)\common\resbund.obj	\
	$(CFG)\$(PLAT)\common\resbund_cnv.obj	\
	$(CFG)\$(PLAT)\common\resource.obj	\
	$(CFG)\$(PLAT)\common\ruleiter.obj	\
	$(CFG)\$(PLAT)\common\schriter.obj	\
	$(CFG)\$(PLAT)\common\serv.obj	\
	$(CFG)\$(PLAT)\common\servlk.obj	\
	$(CFG)\$(PLAT)\common\servlkf.obj	\
	$(CFG)\$(PLAT)\common\servls.obj	\
	$(CFG)\$(PLAT)\common\servnotf.obj	\
	$(CFG)\$(PLAT)\common\servrbf.obj	\
	$(CFG)\$(PLAT)\common\servslkf.obj	\
	$(CFG)\$(PLAT)\common\sharedobject.obj	\
	$(CFG)\$(PLAT)\common\simpleformatter.obj	\
	$(CFG)\$(PLAT)\common\stringpiece.obj	\
	$(CFG)\$(PLAT)\common\stringtriebuilder.obj	\
	$(CFG)\$(PLAT)\common\uarrsort.obj	\
	$(CFG)\$(PLAT)\common\ubidi.obj	\
	$(CFG)\$(PLAT)\common\ubidiln.obj	\
	$(CFG)\$(PLAT)\common\ubiditransform.obj	\
	$(CFG)\$(PLAT)\common\ubidi_props.obj	\
	$(CFG)\$(PLAT)\common\ubidiwrt.obj	\
	$(CFG)\$(PLAT)\common\ubrk.obj	\
	$(CFG)\$(PLAT)\common\ucase.obj	\
	$(CFG)\$(PLAT)\common\ucasemap.obj	\
	$(CFG)\$(PLAT)\common\ucasemap_titlecase_brkiter.obj	\
	$(CFG)\$(PLAT)\common\ucat.obj	\
	$(CFG)\$(PLAT)\common\uchar.obj	\
	$(CFG)\$(PLAT)\common\ucharstrie.obj	\
	$(CFG)\$(PLAT)\common\ucharstriebuilder.obj	\
	$(CFG)\$(PLAT)\common\ucharstrieiterator.obj	\
	$(CFG)\$(PLAT)\common\uchriter.obj	\
	$(CFG)\$(PLAT)\common\ucln_cmn.obj	\
	$(CFG)\$(PLAT)\common\ucmndata.obj	\
	$(CFG)\$(PLAT)\common\ucnv.obj	\
	$(CFG)\$(PLAT)\common\ucnvbocu.obj	\
	$(CFG)\$(PLAT)\common\ucnv2022.obj	\
	$(CFG)\$(PLAT)\common\ucnvdisp.obj	\
	$(CFG)\$(PLAT)\common\ucnvhz.obj	\
	$(CFG)\$(PLAT)\common\ucnvisci.obj	\
	$(CFG)\$(PLAT)\common\ucnvlat1.obj	\
	$(CFG)\$(PLAT)\common\ucnvmbcs.obj	\
	$(CFG)\$(PLAT)\common\ucnvscsu.obj	\
	$(CFG)\$(PLAT)\common\ucnvsel.obj	\
	$(CFG)\$(PLAT)\common\ucnv_bld.obj	\
	$(CFG)\$(PLAT)\common\ucnv_cb.obj	\
	$(CFG)\$(PLAT)\common\ucnv_cnv.obj	\
	$(CFG)\$(PLAT)\common\ucnv_ct.obj	\
	$(CFG)\$(PLAT)\common\ucnv_err.obj	\
	$(CFG)\$(PLAT)\common\ucnv_ext.obj	\
	$(CFG)\$(PLAT)\common\ucnv_io.obj	\
	$(CFG)\$(PLAT)\common\ucnv_lmb.obj	\
	$(CFG)\$(PLAT)\common\ucnv_set.obj	\
	$(CFG)\$(PLAT)\common\ucnv_u16.obj	\
	$(CFG)\$(PLAT)\common\ucnv_u32.obj	\
	$(CFG)\$(PLAT)\common\ucnv_u7.obj	\
	$(CFG)\$(PLAT)\common\ucnv_u8.obj	\
	$(CFG)\$(PLAT)\common\ucol_swp.obj	\
	$(CFG)\$(PLAT)\common\ucurr.obj	\
	$(CFG)\$(PLAT)\common\udata.obj	\
	$(CFG)\$(PLAT)\common\udatamem.obj	\
	$(CFG)\$(PLAT)\common\udataswp.obj	\
	$(CFG)\$(PLAT)\common\uenum.obj	\
	$(CFG)\$(PLAT)\common\uhash.obj	\
	$(CFG)\$(PLAT)\common\uhash_us.obj	\
	$(CFG)\$(PLAT)\common\uidna.obj	\
	$(CFG)\$(PLAT)\common\uinit.obj	\
	$(CFG)\$(PLAT)\common\uiter.obj	\
	$(CFG)\$(PLAT)\common\uinvchar.obj	\
	$(CFG)\$(PLAT)\common\ulist.obj	\
	$(CFG)\$(PLAT)\common\ulistformatter.obj	\
	$(CFG)\$(PLAT)\common\uloc.obj	\
	$(CFG)\$(PLAT)\common\uloc_keytype.obj	\
	$(CFG)\$(PLAT)\common\uloc_tag.obj	\
	$(CFG)\$(PLAT)\common\umapfile.obj	\
	$(CFG)\$(PLAT)\common\umath.obj	\
	$(CFG)\$(PLAT)\common\unames.obj	\
	$(CFG)\$(PLAT)\common\unifiedcache.obj	\
	$(CFG)\$(PLAT)\common\unifilt.obj	\
	$(CFG)\$(PLAT)\common\unifunct.obj	\
	$(CFG)\$(PLAT)\common\uniset.obj	\
	$(CFG)\$(PLAT)\common\unisetspan.obj	\
	$(CFG)\$(PLAT)\common\uniset_closure.obj	\
	$(CFG)\$(PLAT)\common\uniset_props.obj	\
	$(CFG)\$(PLAT)\common\unistr.obj	\
	$(CFG)\$(PLAT)\common\unistr_case.obj	\
	$(CFG)\$(PLAT)\common\unistr_case_locale.obj	\
	$(CFG)\$(PLAT)\common\unistr_cnv.obj	\
	$(CFG)\$(PLAT)\common\unistr_props.obj	\
	$(CFG)\$(PLAT)\common\unistr_titlecase_brkiter.obj	\
	$(CFG)\$(PLAT)\common\unorm.obj	\
	$(CFG)\$(PLAT)\common\unormcmp.obj	\
	$(CFG)\$(PLAT)\common\uobject.obj	\
	$(CFG)\$(PLAT)\common\uprops.obj	\
	$(CFG)\$(PLAT)\common\uresbund.obj	\
	$(CFG)\$(PLAT)\common\uresdata.obj	\
	$(CFG)\$(PLAT)\common\ures_cnv.obj	\
	$(CFG)\$(PLAT)\common\uscript.obj	\
	$(CFG)\$(PLAT)\common\uscript_props.obj	\
	$(CFG)\$(PLAT)\common\usc_impl.obj	\
	$(CFG)\$(PLAT)\common\uset.obj	\
	$(CFG)\$(PLAT)\common\uset_props.obj	\
	$(CFG)\$(PLAT)\common\usetiter.obj	\
	$(CFG)\$(PLAT)\common\ushape.obj	\
	$(CFG)\$(PLAT)\common\usprep.obj	\
	$(CFG)\$(PLAT)\common\ustack.obj	\
	$(CFG)\$(PLAT)\common\ustrenum.obj	\
	$(CFG)\$(PLAT)\common\ustrcase.obj	\
	$(CFG)\$(PLAT)\common\ustrcase_locale.obj	\
	$(CFG)\$(PLAT)\common\ustring.obj	\
	$(CFG)\$(PLAT)\common\ustrfmt.obj	\
	$(CFG)\$(PLAT)\common\ustr_cnv.obj	\
	$(CFG)\$(PLAT)\common\ustr_titlecase_brkiter.obj	\
	$(CFG)\$(PLAT)\common\ustr_wcs.obj	\
	$(CFG)\$(PLAT)\common\ustrtrns.obj	\
	$(CFG)\$(PLAT)\common\utext.obj	\
	$(CFG)\$(PLAT)\common\utf_impl.obj	\
	$(CFG)\$(PLAT)\common\util.obj	\
	$(CFG)\$(PLAT)\common\util_props.obj	\
	$(CFG)\$(PLAT)\common\utrace.obj	\
	$(CFG)\$(PLAT)\common\utrie.obj	\
	$(CFG)\$(PLAT)\common\utrie2.obj	\
	$(CFG)\$(PLAT)\common\utrie2_builder.obj	\
	$(CFG)\$(PLAT)\common\uts46.obj	\
	$(CFG)\$(PLAT)\common\utypes.obj	\
	$(CFG)\$(PLAT)\common\uvector.obj	\
	$(CFG)\$(PLAT)\common\uvectr32.obj	\
	$(CFG)\$(PLAT)\common\uvectr64.obj	\
	$(CFG)\$(PLAT)\common\umutex.obj	\
	$(CFG)\$(PLAT)\common\wintz.obj	\
	$(CFG)\$(PLAT)\common\icuuc.res

ICU_IN_OBJS =	\
	$(CFG)\$(PLAT)\i18n\affixpatternparser.obj	\
	$(CFG)\$(PLAT)\i18n\alphaindex.obj	\
	$(CFG)\$(PLAT)\i18n\anytrans.obj	\
	$(CFG)\$(PLAT)\i18n\astro.obj	\
	$(CFG)\$(PLAT)\i18n\basictz.obj	\
	$(CFG)\$(PLAT)\i18n\bocsu.obj	\
	$(CFG)\$(PLAT)\i18n\brktrans.obj	\
	$(CFG)\$(PLAT)\i18n\buddhcal.obj	\
	$(CFG)\$(PLAT)\i18n\calendar.obj	\
	$(CFG)\$(PLAT)\i18n\casetrn.obj	\
	$(CFG)\$(PLAT)\i18n\cecal.obj	\
	$(CFG)\$(PLAT)\i18n\chnsecal.obj	\
	$(CFG)\$(PLAT)\i18n\choicfmt.obj	\
	$(CFG)\$(PLAT)\i18n\coleitr.obj	\
	$(CFG)\$(PLAT)\i18n\coll.obj	\
	$(CFG)\$(PLAT)\i18n\collation.obj	\
	$(CFG)\$(PLAT)\i18n\collationbuilder.obj	\
	$(CFG)\$(PLAT)\i18n\collationcompare.obj	\
	$(CFG)\$(PLAT)\i18n\collationdata.obj	\
	$(CFG)\$(PLAT)\i18n\collationdatabuilder.obj	\
	$(CFG)\$(PLAT)\i18n\collationdatareader.obj	\
	$(CFG)\$(PLAT)\i18n\collationdatawriter.obj	\
	$(CFG)\$(PLAT)\i18n\collationfastlatin.obj	\
	$(CFG)\$(PLAT)\i18n\collationfastlatinbuilder.obj	\
	$(CFG)\$(PLAT)\i18n\collationfcd.obj	\
	$(CFG)\$(PLAT)\i18n\collationiterator.obj	\
	$(CFG)\$(PLAT)\i18n\collationkeys.obj	\
	$(CFG)\$(PLAT)\i18n\collationroot.obj	\
	$(CFG)\$(PLAT)\i18n\collationrootelements.obj	\
	$(CFG)\$(PLAT)\i18n\collationruleparser.obj	\
	$(CFG)\$(PLAT)\i18n\collationsets.obj	\
	$(CFG)\$(PLAT)\i18n\collationsettings.obj	\
	$(CFG)\$(PLAT)\i18n\collationtailoring.obj	\
	$(CFG)\$(PLAT)\i18n\collationweights.obj	\
	$(CFG)\$(PLAT)\i18n\compactdecimalformat.obj	\
	$(CFG)\$(PLAT)\i18n\coptccal.obj	\
	$(CFG)\$(PLAT)\i18n\cpdtrans.obj	\
	$(CFG)\$(PLAT)\i18n\csdetect.obj	\
	$(CFG)\$(PLAT)\i18n\csmatch.obj	\
	$(CFG)\$(PLAT)\i18n\csrecog.obj	\
	$(CFG)\$(PLAT)\i18n\csrmbcs.obj	\
	$(CFG)\$(PLAT)\i18n\csrsbcs.obj	\
	$(CFG)\$(PLAT)\i18n\csrucode.obj	\
	$(CFG)\$(PLAT)\i18n\csrutf8.obj	\
	$(CFG)\$(PLAT)\i18n\csr2022.obj	\
	$(CFG)\$(PLAT)\i18n\curramt.obj	\
	$(CFG)\$(PLAT)\i18n\currfmt.obj	\
	$(CFG)\$(PLAT)\i18n\currpinf.obj	\
	$(CFG)\$(PLAT)\i18n\currunit.obj	\
	$(CFG)\$(PLAT)\i18n\dangical.obj	\
	$(CFG)\$(PLAT)\i18n\datefmt.obj	\
	$(CFG)\$(PLAT)\i18n\dayperiodrules.obj	\
	$(CFG)\$(PLAT)\i18n\dcfmtsym.obj	\
	$(CFG)\$(PLAT)\i18n\decContext.obj	\
	$(CFG)\$(PLAT)\i18n\decfmtst.obj	\
	$(CFG)\$(PLAT)\i18n\decimalformatpattern.obj	\
	$(CFG)\$(PLAT)\i18n\decimfmt.obj	\
	$(CFG)\$(PLAT)\i18n\decimfmtimpl.obj	\
	$(CFG)\$(PLAT)\i18n\decNumber.obj	\
	$(CFG)\$(PLAT)\i18n\digitaffix.obj	\
	$(CFG)\$(PLAT)\i18n\digitaffixesandpadding.obj	\
	$(CFG)\$(PLAT)\i18n\digitformatter.obj	\
	$(CFG)\$(PLAT)\i18n\digitgrouping.obj	\
	$(CFG)\$(PLAT)\i18n\digitinterval.obj	\
	$(CFG)\$(PLAT)\i18n\digitlst.obj	\
	$(CFG)\$(PLAT)\i18n\dtfmtsym.obj	\
	$(CFG)\$(PLAT)\i18n\dtitvfmt.obj	\
	$(CFG)\$(PLAT)\i18n\dtitvinf.obj	\
	$(CFG)\$(PLAT)\i18n\dtptngen.obj	\
	$(CFG)\$(PLAT)\i18n\dtrule.obj	\
	$(CFG)\$(PLAT)\i18n\esctrn.obj	\
	$(CFG)\$(PLAT)\i18n\ethpccal.obj	\
	$(CFG)\$(PLAT)\i18n\fmtable.obj	\
	$(CFG)\$(PLAT)\i18n\fmtable_cnv.obj	\
	$(CFG)\$(PLAT)\i18n\format.obj	\
	$(CFG)\$(PLAT)\i18n\fphdlimp.obj	\
	$(CFG)\$(PLAT)\i18n\fpositer.obj	\
	$(CFG)\$(PLAT)\i18n\funcrepl.obj	\
	$(CFG)\$(PLAT)\i18n\gender.obj	\
	$(CFG)\$(PLAT)\i18n\gregocal.obj	\
	$(CFG)\$(PLAT)\i18n\gregoimp.obj	\
	$(CFG)\$(PLAT)\i18n\hebrwcal.obj	\
	$(CFG)\$(PLAT)\i18n\indiancal.obj	\
	$(CFG)\$(PLAT)\i18n\inputext.obj	\
	$(CFG)\$(PLAT)\i18n\islamcal.obj	\
	$(CFG)\$(PLAT)\i18n\japancal.obj	\
	$(CFG)\$(PLAT)\i18n\measfmt.obj	\
	$(CFG)\$(PLAT)\i18n\measunit.obj	\
	$(CFG)\$(PLAT)\i18n\measure.obj	\
	$(CFG)\$(PLAT)\i18n\msgfmt.obj	\
	$(CFG)\$(PLAT)\i18n\name2uni.obj	\
	$(CFG)\$(PLAT)\i18n\nfrs.obj	\
	$(CFG)\$(PLAT)\i18n\nfrule.obj	\
	$(CFG)\$(PLAT)\i18n\nfsubs.obj	\
	$(CFG)\$(PLAT)\i18n\nortrans.obj	\
	$(CFG)\$(PLAT)\i18n\nultrans.obj	\
	$(CFG)\$(PLAT)\i18n\numfmt.obj	\
	$(CFG)\$(PLAT)\i18n\numsys.obj	\
	$(CFG)\$(PLAT)\i18n\olsontz.obj	\
	$(CFG)\$(PLAT)\i18n\persncal.obj	\
	$(CFG)\$(PLAT)\i18n\pluralaffix.obj	\
	$(CFG)\$(PLAT)\i18n\plurfmt.obj	\
	$(CFG)\$(PLAT)\i18n\plurrule.obj	\
	$(CFG)\$(PLAT)\i18n\precision.obj	\
	$(CFG)\$(PLAT)\i18n\quant.obj	\
	$(CFG)\$(PLAT)\i18n\quantityformatter.obj	\
	$(CFG)\$(PLAT)\i18n\rbnf.obj	\
	$(CFG)\$(PLAT)\i18n\rbt.obj	\
	$(CFG)\$(PLAT)\i18n\rbtz.obj	\
	$(CFG)\$(PLAT)\i18n\rbt_data.obj	\
	$(CFG)\$(PLAT)\i18n\rbt_pars.obj	\
	$(CFG)\$(PLAT)\i18n\rbt_rule.obj	\
	$(CFG)\$(PLAT)\i18n\rbt_set.obj	\
	$(CFG)\$(PLAT)\i18n\regexcmp.obj	\
	$(CFG)\$(PLAT)\i18n\regeximp.obj	\
	$(CFG)\$(PLAT)\i18n\regexst.obj	\
	$(CFG)\$(PLAT)\i18n\regextxt.obj	\
	$(CFG)\$(PLAT)\i18n\region.obj	\
	$(CFG)\$(PLAT)\i18n\reldatefmt.obj	\
	$(CFG)\$(PLAT)\i18n\reldtfmt.obj	\
	$(CFG)\$(PLAT)\i18n\rematch.obj	\
	$(CFG)\$(PLAT)\i18n\remtrans.obj	\
	$(CFG)\$(PLAT)\i18n\repattrn.obj	\
	$(CFG)\$(PLAT)\i18n\rulebasedcollator.obj	\
	$(CFG)\$(PLAT)\i18n\scientificnumberformatter.obj	\
	$(CFG)\$(PLAT)\i18n\scriptset.obj	\
	$(CFG)\$(PLAT)\i18n\search.obj	\
	$(CFG)\$(PLAT)\i18n\selfmt.obj	\
	$(CFG)\$(PLAT)\i18n\sharedbreakiterator.obj	\
	$(CFG)\$(PLAT)\i18n\simpletz.obj	\
	$(CFG)\$(PLAT)\i18n\smallintformatter.obj	\
	$(CFG)\$(PLAT)\i18n\smpdtfmt.obj	\
	$(CFG)\$(PLAT)\i18n\smpdtfst.obj	\
	$(CFG)\$(PLAT)\i18n\sortkey.obj	\
	$(CFG)\$(PLAT)\i18n\standardplural.obj	\
	$(CFG)\$(PLAT)\i18n\strmatch.obj	\
	$(CFG)\$(PLAT)\i18n\strrepl.obj	\
	$(CFG)\$(PLAT)\i18n\stsearch.obj	\
	$(CFG)\$(PLAT)\i18n\uregion.obj	\
	$(CFG)\$(PLAT)\i18n\taiwncal.obj	\
	$(CFG)\$(PLAT)\i18n\timezone.obj	\
	$(CFG)\$(PLAT)\i18n\titletrn.obj	\
	$(CFG)\$(PLAT)\i18n\tmunit.obj	\
	$(CFG)\$(PLAT)\i18n\tmutamt.obj	\
	$(CFG)\$(PLAT)\i18n\tmutfmt.obj	\
	$(CFG)\$(PLAT)\i18n\tolowtrn.obj	\
	$(CFG)\$(PLAT)\i18n\toupptrn.obj	\
	$(CFG)\$(PLAT)\i18n\translit.obj	\
	$(CFG)\$(PLAT)\i18n\transreg.obj	\
	$(CFG)\$(PLAT)\i18n\tridpars.obj	\
	$(CFG)\$(PLAT)\i18n\tzfmt.obj	\
	$(CFG)\$(PLAT)\i18n\tzgnames.obj	\
	$(CFG)\$(PLAT)\i18n\tznames.obj	\
	$(CFG)\$(PLAT)\i18n\tznames_impl.obj	\
	$(CFG)\$(PLAT)\i18n\tzrule.obj	\
	$(CFG)\$(PLAT)\i18n\tztrans.obj	\
	$(CFG)\$(PLAT)\i18n\ucal.obj	\
	$(CFG)\$(PLAT)\i18n\ucln_in.obj	\
	$(CFG)\$(PLAT)\i18n\ucol.obj	\
	$(CFG)\$(PLAT)\i18n\ucol_res.obj	\
	$(CFG)\$(PLAT)\i18n\ucol_sit.obj	\
	$(CFG)\$(PLAT)\i18n\ucoleitr.obj	\
	$(CFG)\$(PLAT)\i18n\ucsdet.obj	\
	$(CFG)\$(PLAT)\i18n\udat.obj	\
	$(CFG)\$(PLAT)\i18n\udateintervalformat.obj	\
	$(CFG)\$(PLAT)\i18n\udatpg.obj	\
	$(CFG)\$(PLAT)\i18n\ufieldpositer.obj	\
	$(CFG)\$(PLAT)\i18n\uitercollationiterator.obj	\
	$(CFG)\$(PLAT)\i18n\ulocdata.obj	\
	$(CFG)\$(PLAT)\i18n\umsg.obj	\
	$(CFG)\$(PLAT)\i18n\unesctrn.obj	\
	$(CFG)\$(PLAT)\i18n\uni2name.obj	\
	$(CFG)\$(PLAT)\i18n\unum.obj	\
	$(CFG)\$(PLAT)\i18n\unumsys.obj	\
	$(CFG)\$(PLAT)\i18n\upluralrules.obj	\
	$(CFG)\$(PLAT)\i18n\uregex.obj	\
	$(CFG)\$(PLAT)\i18n\uregexc.obj	\
	$(CFG)\$(PLAT)\i18n\usearch.obj	\
	$(CFG)\$(PLAT)\i18n\utrans.obj	\
	$(CFG)\$(PLAT)\i18n\uspoof.obj	\
	$(CFG)\$(PLAT)\i18n\uspoof_build.obj	\
	$(CFG)\$(PLAT)\i18n\uspoof_conf.obj	\
	$(CFG)\$(PLAT)\i18n\uspoof_impl.obj	\
	$(CFG)\$(PLAT)\i18n\utf16collationiterator.obj	\
	$(CFG)\$(PLAT)\i18n\utf8collationiterator.obj	\
	$(CFG)\$(PLAT)\i18n\utmscale.obj	\
	$(CFG)\$(PLAT)\i18n\valueformatter.obj	\
	$(CFG)\$(PLAT)\i18n\visibledigits.obj	\
	$(CFG)\$(PLAT)\i18n\vtzone.obj	\
	$(CFG)\$(PLAT)\i18n\vzone.obj	\
	$(CFG)\$(PLAT)\i18n\windtfmt.obj	\
	$(CFG)\$(PLAT)\i18n\winnmfmt.obj	\
	$(CFG)\$(PLAT)\i18n\wintzimpl.obj	\
	$(CFG)\$(PLAT)\i18n\zonemeta.obj	\
	$(CFG)\$(PLAT)\i18n\zrule.obj	\
	$(CFG)\$(PLAT)\i18n\ztrans.obj	\
	$(CFG)\$(PLAT)\i18n\icuin.res

ICU_IO_OBJS =	\
	$(CFG)\$(PLAT)\io\locbund.obj	\
	$(CFG)\$(PLAT)\io\sprintf.obj	\
	$(CFG)\$(PLAT)\io\sscanf.obj	\
	$(CFG)\$(PLAT)\io\ucln_io.obj	\
	$(CFG)\$(PLAT)\io\ufile.obj	\
	$(CFG)\$(PLAT)\io\ufmt_cmn.obj	\
	$(CFG)\$(PLAT)\io\uprintf.obj	\
	$(CFG)\$(PLAT)\io\uprntf_p.obj	\
	$(CFG)\$(PLAT)\io\uscanf.obj	\
	$(CFG)\$(PLAT)\io\uscanf_p.obj	\
	$(CFG)\$(PLAT)\io\ustdio.obj	\
	$(CFG)\$(PLAT)\io\ustream.obj	\
	$(CFG)\$(PLAT)\io\icuio.res

ICU_TU_OBJS =	\
	$(CFG)\$(PLAT)\icutu\collationinfo.obj	\
	$(CFG)\$(PLAT)\icutu\dbgutil.obj	\
	$(CFG)\$(PLAT)\icutu\denseranges.obj	\
	$(CFG)\$(PLAT)\icutu\filestrm.obj	\
	$(CFG)\$(PLAT)\icutu\filetools.obj	\
	$(CFG)\$(PLAT)\icutu\flagparser.obj	\
	$(CFG)\$(PLAT)\icutu\package.obj	\
	$(CFG)\$(PLAT)\icutu\pkgitems.obj	\
	$(CFG)\$(PLAT)\icutu\pkg_genc.obj	\
	$(CFG)\$(PLAT)\icutu\pkg_gencmn.obj	\
	$(CFG)\$(PLAT)\icutu\pkg_icu.obj	\
	$(CFG)\$(PLAT)\icutu\ppucd.obj	\
	$(CFG)\$(PLAT)\icutu\swapimpl.obj	\
	$(CFG)\$(PLAT)\icutu\toolutil.obj	\
	$(CFG)\$(PLAT)\icutu\ucbuf.obj	\
	$(CFG)\$(PLAT)\icutu\ucm.obj	\
	$(CFG)\$(PLAT)\icutu\ucmstate.obj	\
	$(CFG)\$(PLAT)\icutu\udbgutil.obj	\
	$(CFG)\$(PLAT)\icutu\unewdata.obj	\
	$(CFG)\$(PLAT)\icutu\uoptions.obj	\
	$(CFG)\$(PLAT)\icutu\uparse.obj	\
	$(CFG)\$(PLAT)\icutu\writesrc.obj	\
	$(CFG)\$(PLAT)\icutu\xmlparser.obj

ICU_TEST_OBJS =	\
	$(CFG)\$(PLAT)\icutest\ctest.obj	\
	$(CFG)\$(PLAT)\icutest\datamap.obj	\
	$(CFG)\$(PLAT)\icutest\testdata.obj	\
	$(CFG)\$(PLAT)\icutest\tstdtmod.obj	\
	$(CFG)\$(PLAT)\icutest\ucln_ct.obj	\
	$(CFG)\$(PLAT)\icutest\uperf.obj

ICU_TESTPLUG_OBJS = $(CFG)\$(PLAT)\testplug\testplug.obj

DERB_OBJS = $(CFG)\$(PLAT)\tools\derb.obj
GENBRK_OBJS = $(CFG)\$(PLAT)\tools\genbrk.obj
GENCCODE_OBJS = $(CFG)\$(PLAT)\tools\genccode.obj
GENCFU_OBJS = $(CFG)\$(PLAT)\tools\gencfu.obj
GENCMN_OBJS = $(CFG)\$(PLAT)\tools\gencmn.obj
GENDICT_OBJS = $(CFG)\$(PLAT)\tools\gendict.obj
GENCNVAL_OBJS = $(CFG)\$(PLAT)\tools\gencnval.obj
GENNORM2_OBJS = $(CFG)\$(PLAT)\tools\gennorm2.obj $(CFG)\$(PLAT)\tools\n2builder.obj
GENSPREP_OBJS = $(CFG)\$(PLAT)\tools\gensprep.obj $(CFG)\$(PLAT)\tools\store.obj
GENTEST_OBJS = $(CFG)\$(PLAT)\tools\gentest.obj $(CFG)\$(PLAT)\tools\genres32.obj
ICUINFO_OBJS = $(CFG)\$(PLAT)\tools\icuinfo.obj
ICUPKG_OBJS = $(CFG)\$(PLAT)\tools\icupkg.obj

GENRB_OBJS =	\
	$(CFG)\$(PLAT)\tools\errmsg.obj	\
	$(CFG)\$(PLAT)\tools\genrb.obj	\
	$(CFG)\$(PLAT)\tools\parse.obj	\
	$(CFG)\$(PLAT)\tools\prscmnts.obj	\
	$(CFG)\$(PLAT)\tools\rbutil.obj	\
	$(CFG)\$(PLAT)\tools\read.obj	\
	$(CFG)\$(PLAT)\tools\reslist.obj	\
	$(CFG)\$(PLAT)\tools\rle.obj	\
	$(CFG)\$(PLAT)\tools\ustr.obj	\
	$(CFG)\$(PLAT)\tools\wrtjava.obj	\
	$(CFG)\$(PLAT)\tools\wrtxml.obj

MAKECONV_OBJS =	\
	$(CFG)\$(PLAT)\tools\gencnvex.obj	\
	$(CFG)\$(PLAT)\tools\genmbcs.obj	\
	$(CFG)\$(PLAT)\tools\makeconv.obj	\
	$(CFG)\$(PLAT)\tools\ucnvstat.obj

PKGDATA_OBJS = $(CFG)\$(PLAT)\tools\pkgdata.obj $(CFG)\$(PLAT)\tools\pkgtypes.obj

UCONV_OBJS = $(CFG)\$(PLAT)\tools\uconv.obj $(CFG)\$(PLAT)\tools\uwmsg.obj

CAL_OBJS = $(CFG)\$(PLAT)\samples_cal\cal.obj $(CFG)\$(PLAT)\samples_cal\uprint.obj
DATE_OBJS = $(CFG)\$(PLAT)\samples_date\date.obj $(CFG)\$(PLAT)\samples_date\uprint.obj

INTLTEST_OBJS =	\
	$(CFG)\$(PLAT)\intltest\aliastst.obj	\
	$(CFG)\$(PLAT)\intltest\allcoll.obj	\
	$(CFG)\$(PLAT)\intltest\alphaindextst.obj	\
	$(CFG)\$(PLAT)\intltest\apicoll.obj	\
	$(CFG)\$(PLAT)\intltest\astrotst.obj	\
	$(CFG)\$(PLAT)\intltest\bidiconf.obj	\
	$(CFG)\$(PLAT)\intltest\bytestrietest.obj	\
	$(CFG)\$(PLAT)\intltest\calcasts.obj	\
	$(CFG)\$(PLAT)\intltest\callimts.obj	\
	$(CFG)\$(PLAT)\intltest\calregts.obj	\
	$(CFG)\$(PLAT)\intltest\caltest.obj	\
	$(CFG)\$(PLAT)\intltest\caltztst.obj	\
	$(CFG)\$(PLAT)\intltest\canittst.obj	\
	$(CFG)\$(PLAT)\intltest\citrtest.obj	\
	$(CFG)\$(PLAT)\intltest\collationtest.obj	\
	$(CFG)\$(PLAT)\intltest\colldata.obj	\
	$(CFG)\$(PLAT)\intltest\compactdecimalformattest.obj	\
	$(CFG)\$(PLAT)\intltest\convtest.obj	\
	$(CFG)\$(PLAT)\intltest\cpdtrtst.obj	\
	$(CFG)\$(PLAT)\intltest\csdetest.obj	\
	$(CFG)\$(PLAT)\intltest\currcoll.obj	\
	$(CFG)\$(PLAT)\intltest\dadrcal.obj	\
	$(CFG)\$(PLAT)\intltest\dadrfmt.obj	\
	$(CFG)\$(PLAT)\intltest\datadrivennumberformattestsuite.obj	\
	$(CFG)\$(PLAT)\intltest\dcfmapts.obj	\
	$(CFG)\$(PLAT)\intltest\dcfmtest.obj	\
	$(CFG)\$(PLAT)\intltest\decoll.obj	\
	$(CFG)\$(PLAT)\intltest\dtfmapts.obj	\
	$(CFG)\$(PLAT)\intltest\dtfmrgts.obj	\
	$(CFG)\$(PLAT)\intltest\dtfmtrtts.obj	\
	$(CFG)\$(PLAT)\intltest\dtfmttst.obj	\
	$(CFG)\$(PLAT)\intltest\dtifmtts.obj	\
	$(CFG)\$(PLAT)\intltest\dtptngts.obj	\
	$(CFG)\$(PLAT)\intltest\encoll.obj	\
	$(CFG)\$(PLAT)\intltest\escoll.obj	\
	$(CFG)\$(PLAT)\intltest\ficoll.obj	\
	$(CFG)\$(PLAT)\intltest\fldset.obj	\
	$(CFG)\$(PLAT)\intltest\frcoll.obj	\
	$(CFG)\$(PLAT)\intltest\g7coll.obj	\
	$(CFG)\$(PLAT)\intltest\genderinfotest.obj	\
	$(CFG)\$(PLAT)\intltest\icusvtst.obj	\
	$(CFG)\$(PLAT)\intltest\idnaconf.obj	\
	$(CFG)\$(PLAT)\intltest\idnaref.obj	\
	$(CFG)\$(PLAT)\intltest\incaltst.obj	\
	$(CFG)\$(PLAT)\intltest\intltest.obj	\
	$(CFG)\$(PLAT)\intltest\itercoll.obj	\
	$(CFG)\$(PLAT)\intltest\itformat.obj	\
	$(CFG)\$(PLAT)\intltest\itmajor.obj	\
	$(CFG)\$(PLAT)\intltest\itrbbi.obj	\
	$(CFG)\$(PLAT)\intltest\itrbnf.obj	\
	$(CFG)\$(PLAT)\intltest\itrbnfp.obj	\
	$(CFG)\$(PLAT)\intltest\itrbnfrt.obj	\
	$(CFG)\$(PLAT)\intltest\itspoof.obj	\
	$(CFG)\$(PLAT)\intltest\ittrans.obj	\
	$(CFG)\$(PLAT)\intltest\itutil.obj	\
	$(CFG)\$(PLAT)\intltest\jacoll.obj	\
	$(CFG)\$(PLAT)\intltest\jamotest.obj	\
	$(CFG)\$(PLAT)\intltest\lcukocol.obj	\
	$(CFG)\$(PLAT)\intltest\listformattertest.obj	\
	$(CFG)\$(PLAT)\intltest\locnmtst.obj	\
	$(CFG)\$(PLAT)\intltest\loctest.obj	\
	$(CFG)\$(PLAT)\intltest\measfmttest.obj	\
	$(CFG)\$(PLAT)\intltest\miscdtfm.obj	\
	$(CFG)\$(PLAT)\intltest\mnkytst.obj	\
	$(CFG)\$(PLAT)\intltest\msfmrgts.obj	\
	$(CFG)\$(PLAT)\intltest\nmfmapts.obj	\
	$(CFG)\$(PLAT)\intltest\nmfmtrt.obj	\
	$(CFG)\$(PLAT)\intltest\normconf.obj	\
	$(CFG)\$(PLAT)\intltest\nptrans.obj	\
	$(CFG)\$(PLAT)\intltest\numberformattesttuple.obj	\
	$(CFG)\$(PLAT)\intltest\numberformat2test.obj	\
	$(CFG)\$(PLAT)\intltest\numfmtspectest.obj	\
	$(CFG)\$(PLAT)\intltest\numfmtst.obj	\
	$(CFG)\$(PLAT)\intltest\numrgts.obj	\
	$(CFG)\$(PLAT)\intltest\pluralmaptest.obj	\
	$(CFG)\$(PLAT)\intltest\plurfmts.obj	\
	$(CFG)\$(PLAT)\intltest\plurults.obj	\
	$(CFG)\$(PLAT)\intltest\pptest.obj	\
	$(CFG)\$(PLAT)\intltest\punyref.obj	\
	$(CFG)\$(PLAT)\intltest\quantityformattertest.obj	\
	$(CFG)\$(PLAT)\intltest\rbbiapts.obj	\
	$(CFG)\$(PLAT)\intltest\rbbitst.obj	\
	$(CFG)\$(PLAT)\intltest\rbbimonkeytest.obj	\
	$(CFG)\$(PLAT)\intltest\regcoll.obj	\
	$(CFG)\$(PLAT)\intltest\regextst.obj	\
	$(CFG)\$(PLAT)\intltest\regiontst.obj	\
	$(CFG)\$(PLAT)\intltest\reldatefmttest.obj	\
	$(CFG)\$(PLAT)\intltest\reptest.obj	\
	$(CFG)\$(PLAT)\intltest\restest.obj	\
	$(CFG)\$(PLAT)\intltest\restsnew.obj	\
	$(CFG)\$(PLAT)\intltest\scientificnumberformattertest.obj	\
	$(CFG)\$(PLAT)\intltest\sdtfmtts.obj	\
	$(CFG)\$(PLAT)\intltest\selfmts.obj	\
	$(CFG)\$(PLAT)\intltest\sfwdchit.obj	\
	$(CFG)\$(PLAT)\intltest\simpleformattertest.obj	\
	$(CFG)\$(PLAT)\intltest\simplethread.obj	\
	$(CFG)\$(PLAT)\intltest\srchtest.obj	\
	$(CFG)\$(PLAT)\intltest\ssearch.obj	\
	$(CFG)\$(PLAT)\intltest\strcase.obj	\
	$(CFG)\$(PLAT)\intltest\strtest.obj	\
	$(CFG)\$(PLAT)\intltest\svccoll.obj	\
	$(CFG)\$(PLAT)\intltest\tchcfmt.obj	\
	$(CFG)\$(PLAT)\intltest\testidn.obj	\
	$(CFG)\$(PLAT)\intltest\testidna.obj	\
	$(CFG)\$(PLAT)\intltest\testutil.obj	\
	$(CFG)\$(PLAT)\intltest\textfile.obj	\
	$(CFG)\$(PLAT)\intltest\tfsmalls.obj	\
	$(CFG)\$(PLAT)\intltest\thcoll.obj	\
	$(CFG)\$(PLAT)\intltest\tmsgfmt.obj	\
	$(CFG)\$(PLAT)\intltest\tokiter.obj	\
	$(CFG)\$(PLAT)\intltest\transapi.obj	\
	$(CFG)\$(PLAT)\intltest\transrt.obj	\
	$(CFG)\$(PLAT)\intltest\transtst.obj	\
	$(CFG)\$(PLAT)\intltest\trcoll.obj	\
	$(CFG)\$(PLAT)\intltest\trnserr.obj	\
	$(CFG)\$(PLAT)\intltest\tscoll.obj	\
	$(CFG)\$(PLAT)\intltest\tsdate.obj	\
	$(CFG)\$(PLAT)\intltest\tsdcfmsy.obj	\
	$(CFG)\$(PLAT)\intltest\tsdtfmsy.obj	\
	$(CFG)\$(PLAT)\intltest\tsmthred.obj	\
	$(CFG)\$(PLAT)\intltest\tsnmfmt.obj	\
	$(CFG)\$(PLAT)\intltest\tsputil.obj	\
	$(CFG)\$(PLAT)\intltest\tstnorm.obj	\
	$(CFG)\$(PLAT)\intltest\tstnrapi.obj	\
	$(CFG)\$(PLAT)\intltest\tufmtts.obj	\
	$(CFG)\$(PLAT)\intltest\tzbdtest.obj	\
	$(CFG)\$(PLAT)\intltest\tzfmttst.obj	\
	$(CFG)\$(PLAT)\intltest\tzoffloc.obj	\
	$(CFG)\$(PLAT)\intltest\tzregts.obj	\
	$(CFG)\$(PLAT)\intltest\tzrulets.obj	\
	$(CFG)\$(PLAT)\intltest\tztest.obj	\
	$(CFG)\$(PLAT)\intltest\ucaconf.obj	\
	$(CFG)\$(PLAT)\intltest\ucdtest.obj	\
	$(CFG)\$(PLAT)\intltest\ucharstrietest.obj	\
	$(CFG)\$(PLAT)\intltest\unifiedcachetest.obj	\
	$(CFG)\$(PLAT)\intltest\uobjtest.obj	\
	$(CFG)\$(PLAT)\intltest\usettest.obj	\
	$(CFG)\$(PLAT)\intltest\ustrtest.obj	\
	$(CFG)\$(PLAT)\intltest\uts46test.obj	\
	$(CFG)\$(PLAT)\intltest\utxttest.obj	\
	$(CFG)\$(PLAT)\intltest\uvectest.obj	\
	$(CFG)\$(PLAT)\intltest\v32test.obj	\
	$(CFG)\$(PLAT)\intltest\windttst.obj	\
	$(CFG)\$(PLAT)\intltest\winnmtst.obj	\
	$(CFG)\$(PLAT)\intltest\winutil.obj

CINTLTST_OBJS =	\
	$(CFG)\$(PLAT)\cintltst\bocu1tst.obj	\
	$(CFG)\$(PLAT)\cintltst\callcoll.obj	\
	$(CFG)\$(PLAT)\cintltst\calltest.obj	\
	$(CFG)\$(PLAT)\cintltst\capitst.obj	\
	$(CFG)\$(PLAT)\cintltst\cbiapts.obj	\
	$(CFG)\$(PLAT)\cintltst\cbididat.obj	\
	$(CFG)\$(PLAT)\cintltst\cbiditransformtst.obj	\
	$(CFG)\$(PLAT)\cintltst\cbiditst.obj	\
	$(CFG)\$(PLAT)\cintltst\cbkittst.obj	\
	$(CFG)\$(PLAT)\cintltst\ccaltst.obj	\
	$(CFG)\$(PLAT)\cintltst\ccapitst.obj	\
	$(CFG)\$(PLAT)\cintltst\ccolltst.obj	\
	$(CFG)\$(PLAT)\cintltst\cconvtst.obj	\
	$(CFG)\$(PLAT)\cintltst\cctest.obj	\
	$(CFG)\$(PLAT)\cintltst\ccurrtst.obj	\
	$(CFG)\$(PLAT)\cintltst\cdateintervalformattest.obj	\
	$(CFG)\$(PLAT)\cintltst\cdattst.obj	\
	$(CFG)\$(PLAT)\cintltst\cdetst.obj	\
	$(CFG)\$(PLAT)\cintltst\cdtdptst.obj	\
	$(CFG)\$(PLAT)\cintltst\cdtrgtst.obj	\
	$(CFG)\$(PLAT)\cintltst\cestst.obj	\
	$(CFG)\$(PLAT)\cintltst\cfintst.obj	\
	$(CFG)\$(PLAT)\cintltst\cformtst.obj	\
	$(CFG)\$(PLAT)\cintltst\cfrtst.obj	\
	$(CFG)\$(PLAT)\cintltst\cg7coll.obj	\
	$(CFG)\$(PLAT)\cintltst\cgendtst.obj	\
	$(CFG)\$(PLAT)\cintltst\chashtst.obj	\
	$(CFG)\$(PLAT)\cintltst\cintltst.obj	\
	$(CFG)\$(PLAT)\cintltst\citertst.obj	\
	$(CFG)\$(PLAT)\cintltst\cjaptst.obj	\
	$(CFG)\$(PLAT)\cintltst\cldrtest.obj	\
	$(CFG)\$(PLAT)\cintltst\cloctst.obj	\
	$(CFG)\$(PLAT)\cintltst\cmsccoll.obj	\
	$(CFG)\$(PLAT)\cintltst\cmsgtst.obj	\
	$(CFG)\$(PLAT)\cintltst\cnmdptst.obj	\
	$(CFG)\$(PLAT)\cintltst\cnormtst.obj	\
	$(CFG)\$(PLAT)\cintltst\cnumtst.obj	\
	$(CFG)\$(PLAT)\cintltst\cpluralrulestest.obj	\
	$(CFG)\$(PLAT)\cintltst\cposxtst.obj	\
	$(CFG)\$(PLAT)\cintltst\crelativedateformattest.obj	\
	$(CFG)\$(PLAT)\cintltst\crestst.obj	\
	$(CFG)\$(PLAT)\cintltst\creststn.obj	\
	$(CFG)\$(PLAT)\cintltst\cstrcase.obj	\
	$(CFG)\$(PLAT)\cintltst\cstrtest.obj	\
	$(CFG)\$(PLAT)\cintltst\cturtst.obj	\
	$(CFG)\$(PLAT)\cintltst\cucdapi.obj	\
	$(CFG)\$(PLAT)\cintltst\cucdtst.obj	\
	$(CFG)\$(PLAT)\cintltst\currtest.obj	\
	$(CFG)\$(PLAT)\cintltst\custrtrn.obj	\
	$(CFG)\$(PLAT)\cintltst\custrtst.obj	\
	$(CFG)\$(PLAT)\cintltst\cutiltst.obj	\
	$(CFG)\$(PLAT)\cintltst\encoll.obj	\
	$(CFG)\$(PLAT)\cintltst\eurocreg.obj	\
	$(CFG)\$(PLAT)\cintltst\hpmufn.obj	\
	$(CFG)\$(PLAT)\cintltst\idnatest.obj	\
	$(CFG)\$(PLAT)\cintltst\nccbtst.obj	\
	$(CFG)\$(PLAT)\cintltst\ncnvfbts.obj	\
	$(CFG)\$(PLAT)\cintltst\ncnvtst.obj	\
	$(CFG)\$(PLAT)\cintltst\nfsprep.obj	\
	$(CFG)\$(PLAT)\cintltst\nucnvtst.obj	\
	$(CFG)\$(PLAT)\cintltst\putiltst.obj	\
	$(CFG)\$(PLAT)\cintltst\reapits.obj	\
	$(CFG)\$(PLAT)\cintltst\sorttest.obj	\
	$(CFG)\$(PLAT)\cintltst\spooftest.obj	\
	$(CFG)\$(PLAT)\cintltst\spreptst.obj	\
	$(CFG)\$(PLAT)\cintltst\sprpdata.obj	\
	$(CFG)\$(PLAT)\cintltst\stdnmtst.obj	\
	$(CFG)\$(PLAT)\cintltst\tracetst.obj	\
	$(CFG)\$(PLAT)\cintltst\trie2test.obj	\
	$(CFG)\$(PLAT)\cintltst\trietest.obj	\
	$(CFG)\$(PLAT)\cintltst\ucnvseltst.obj	\
	$(CFG)\$(PLAT)\cintltst\ucsdetst.obj	\
	$(CFG)\$(PLAT)\cintltst\udatatst.obj	\
	$(CFG)\$(PLAT)\cintltst\udatpg_test.obj	\
	$(CFG)\$(PLAT)\cintltst\uenumtst.obj	\
	$(CFG)\$(PLAT)\cintltst\ulistfmttest.obj	\
	$(CFG)\$(PLAT)\cintltst\uregiontest.obj	\
	$(CFG)\$(PLAT)\cintltst\usettest.obj	\
	$(CFG)\$(PLAT)\cintltst\usrchtst.obj	\
	$(CFG)\$(PLAT)\cintltst\utexttst.obj	\
	$(CFG)\$(PLAT)\cintltst\utf16tst.obj	\
	$(CFG)\$(PLAT)\cintltst\utf8tst.obj	\
	$(CFG)\$(PLAT)\cintltst\utmstest.obj	\
	$(CFG)\$(PLAT)\cintltst\utransts.obj

IOTEST_OBJS =	\
	$(CFG)\$(PLAT)\iotest\filetst.obj	\
	$(CFG)\$(PLAT)\iotest\iotest.obj	\
	$(CFG)\$(PLAT)\iotest\stream.obj	\
	$(CFG)\$(PLAT)\iotest\strtst.obj	\
	$(CFG)\$(PLAT)\iotest\trnstst.obj