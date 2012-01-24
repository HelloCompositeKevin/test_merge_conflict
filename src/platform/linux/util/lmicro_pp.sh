#!/bin/sh

# ping pong

./cos_loader \
"c0.o, ;*fprr.o, ;mm.o, ;print.o, ;schedconf.o, ;st.o, ;bc.o, ;boot.o,a4;cg.o,a1;\
\
!mpool.o,a2;!l.o,a8;!te.o,a3;!e.o,a3;!sm.o,a2;!va.o,a1;!buf.o,a2;!tp.o,a4;\
(!po_low.o=micro_ppong_lower.o), ;(!po.o=micro_ppong.o), ;(!pi.o=micro_pingp.o),a9;(!pi2.o=micro_pingp.o),a10:\
\
c0.o-fprr.o;\
fprr.o-print.o|mm.o|st.o|schedconf.o|[parent_]bc.o;\
cg.o-fprr.o;\
l.o-fprr.o|mm.o|print.o;\
te.o-print.o|fprr.o|mm.o|va.o;\
mm.o-print.o;\
e.o-fprr.o|print.o|mm.o|l.o|st.o|sm.o|va.o;\
st.o-print.o;\
schedconf.o-print.o;\
bc.o-print.o;\
boot.o-print.o|fprr.o|mm.o|schedconf.o|cg.o;\
va.o-print.o|fprr.o|mm.o|boot.o|l.o;\
sm.o-print.o|fprr.o|mm.o|boot.o|va.o|mpool.o|l.o;\
buf.o-fprr.o|print.o|l.o|mm.o|boot.o|va.o|mpool.o;\
mpool.o-print.o|fprr.o|mm.o|boot.o|va.o|l.o;\
tp.o-sm.o|buf.o|print.o|te.o|fprr.o|schedconf.o|mm.o|va.o|mpool.o;\
\
pi.o-sm.o|po.o|print.o|fprr.o|va.o|mm.o|buf.o|l.o;\
pi2.o-sm.o|po.o|print.o|fprr.o|va.o|mm.o|buf.o|l.o;\
po.o-sm.o|va.o|mm.o|print.o|buf.o|fprr.o|l.o|po_low.o;\
po_low.o-sm.o|va.o|mm.o|print.o|buf.o|fprr.o|l.o\
" ./gen_client_stub
