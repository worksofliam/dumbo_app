**free

ctl-opt dftactgrp(*no);

dcl-pi P2802;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1660.rpgleinc'
/copy 'qrpgleref/P232.rpgleinc'
/copy 'qrpgleref/P1126.rpgleinc'

dcl-ds theTable extname('T199') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T199 LIMIT 1;

theCharVar = 'Hello from P2802';
dsply theCharVar;
P1660();
P232();
P1126();
return;