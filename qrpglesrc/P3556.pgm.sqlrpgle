**free

ctl-opt dftactgrp(*no);

dcl-pi P3556;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P702.rpgleinc'
/copy 'qrpgleref/P1029.rpgleinc'
/copy 'qrpgleref/P439.rpgleinc'

dcl-ds theTable extname('T215') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T215 LIMIT 1;

theCharVar = 'Hello from P3556';
dsply theCharVar;
P702();
P1029();
P439();
return;