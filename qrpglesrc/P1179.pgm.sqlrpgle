**free

ctl-opt dftactgrp(*no);

dcl-pi P1179;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P552.rpgleinc'
/copy 'qrpgleref/P1077.rpgleinc'
/copy 'qrpgleref/P503.rpgleinc'

dcl-ds theTable extname('T1405') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1405 LIMIT 1;

theCharVar = 'Hello from P1179';
dsply theCharVar;
P552();
P1077();
P503();
return;