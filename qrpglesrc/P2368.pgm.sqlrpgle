**free

ctl-opt dftactgrp(*no);

dcl-pi P2368;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1261.rpgleinc'
/copy 'qrpgleref/P1976.rpgleinc'
/copy 'qrpgleref/P1979.rpgleinc'

dcl-ds theTable extname('T1549') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1549 LIMIT 1;

theCharVar = 'Hello from P2368';
dsply theCharVar;
P1261();
P1976();
P1979();
return;