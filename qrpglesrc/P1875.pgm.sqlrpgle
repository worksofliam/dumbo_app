**free

ctl-opt dftactgrp(*no);

dcl-pi P1875;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P935.rpgleinc'
/copy 'qrpgleref/P1303.rpgleinc'
/copy 'qrpgleref/P832.rpgleinc'

dcl-ds theTable extname('T1519') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1519 LIMIT 1;

theCharVar = 'Hello from P1875';
dsply theCharVar;
P935();
P1303();
P832();
return;