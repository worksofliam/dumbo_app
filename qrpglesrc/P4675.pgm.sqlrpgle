**free

ctl-opt dftactgrp(*no);

dcl-pi P4675;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3071.rpgleinc'
/copy 'qrpgleref/P2392.rpgleinc'
/copy 'qrpgleref/P776.rpgleinc'

dcl-ds theTable extname('T1501') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1501 LIMIT 1;

theCharVar = 'Hello from P4675';
dsply theCharVar;
P3071();
P2392();
P776();
return;