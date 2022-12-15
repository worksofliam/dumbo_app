**free

ctl-opt dftactgrp(*no);

dcl-pi P3176;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2563.rpgleinc'
/copy 'qrpgleref/P2557.rpgleinc'
/copy 'qrpgleref/P1295.rpgleinc'

dcl-ds theTable extname('T128') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T128 LIMIT 1;

theCharVar = 'Hello from P3176';
dsply theCharVar;
P2563();
P2557();
P1295();
return;