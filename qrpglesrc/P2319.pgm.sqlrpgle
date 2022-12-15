**free

ctl-opt dftactgrp(*no);

dcl-pi P2319;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2143.rpgleinc'
/copy 'qrpgleref/P1146.rpgleinc'
/copy 'qrpgleref/P1039.rpgleinc'

dcl-ds theTable extname('T1150') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1150 LIMIT 1;

theCharVar = 'Hello from P2319';
dsply theCharVar;
P2143();
P1146();
P1039();
return;