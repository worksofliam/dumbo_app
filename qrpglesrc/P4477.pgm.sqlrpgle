**free

ctl-opt dftactgrp(*no);

dcl-pi P4477;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P508.rpgleinc'
/copy 'qrpgleref/P2338.rpgleinc'
/copy 'qrpgleref/P3676.rpgleinc'

dcl-ds theTable extname('T332') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T332 LIMIT 1;

theCharVar = 'Hello from P4477';
dsply theCharVar;
P508();
P2338();
P3676();
return;