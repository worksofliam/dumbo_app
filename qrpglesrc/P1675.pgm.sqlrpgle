**free

ctl-opt dftactgrp(*no);

dcl-pi P1675;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P780.rpgleinc'
/copy 'qrpgleref/P859.rpgleinc'
/copy 'qrpgleref/P1445.rpgleinc'

dcl-ds theTable extname('T451') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T451 LIMIT 1;

theCharVar = 'Hello from P1675';
dsply theCharVar;
P780();
P859();
P1445();
return;