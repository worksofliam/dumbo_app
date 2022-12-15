**free

ctl-opt dftactgrp(*no);

dcl-pi P3421;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P556.rpgleinc'
/copy 'qrpgleref/P2521.rpgleinc'
/copy 'qrpgleref/P2295.rpgleinc'

dcl-ds theTable extname('T680') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T680 LIMIT 1;

theCharVar = 'Hello from P3421';
dsply theCharVar;
P556();
P2521();
P2295();
return;