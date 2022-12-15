**free

ctl-opt dftactgrp(*no);

dcl-pi P4823;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3129.rpgleinc'
/copy 'qrpgleref/P1657.rpgleinc'
/copy 'qrpgleref/P4059.rpgleinc'

dcl-ds theTable extname('T1818') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1818 LIMIT 1;

theCharVar = 'Hello from P4823';
dsply theCharVar;
P3129();
P1657();
P4059();
return;