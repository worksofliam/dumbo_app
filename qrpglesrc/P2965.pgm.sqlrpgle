**free

ctl-opt dftactgrp(*no);

dcl-pi P2965;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P585.rpgleinc'
/copy 'qrpgleref/P462.rpgleinc'
/copy 'qrpgleref/P280.rpgleinc'

dcl-ds theTable extname('T1660') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1660 LIMIT 1;

theCharVar = 'Hello from P2965';
dsply theCharVar;
P585();
P462();
P280();
return;