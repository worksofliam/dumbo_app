**free

ctl-opt dftactgrp(*no);

dcl-pi P1965;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1300.rpgleinc'
/copy 'qrpgleref/P1864.rpgleinc'
/copy 'qrpgleref/P1773.rpgleinc'

dcl-ds theTable extname('T1696') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1696 LIMIT 1;

theCharVar = 'Hello from P1965';
dsply theCharVar;
P1300();
P1864();
P1773();
return;