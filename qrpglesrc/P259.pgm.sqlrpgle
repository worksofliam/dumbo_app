**free

ctl-opt dftactgrp(*no);

dcl-pi P259;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P124.rpgleinc'
/copy 'qrpgleref/P31.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'

dcl-ds theTable extname('T1842') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1842 LIMIT 1;

theCharVar = 'Hello from P259';
dsply theCharVar;
P124();
P31();
P1();
return;