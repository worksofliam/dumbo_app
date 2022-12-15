**free

ctl-opt dftactgrp(*no);

dcl-pi P3792;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1398.rpgleinc'
/copy 'qrpgleref/P3108.rpgleinc'
/copy 'qrpgleref/P2690.rpgleinc'

dcl-ds theTable extname('T36') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T36 LIMIT 1;

theCharVar = 'Hello from P3792';
dsply theCharVar;
P1398();
P3108();
P2690();
return;