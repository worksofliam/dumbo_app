**free

ctl-opt dftactgrp(*no);

dcl-pi P3218;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3126.rpgleinc'
/copy 'qrpgleref/P2512.rpgleinc'
/copy 'qrpgleref/P3000.rpgleinc'

dcl-ds theTable extname('T993') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T993 LIMIT 1;

theCharVar = 'Hello from P3218';
dsply theCharVar;
P3126();
P2512();
P3000();
return;