**free

ctl-opt dftactgrp(*no);

dcl-pi P3621;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P598.rpgleinc'
/copy 'qrpgleref/P246.rpgleinc'
/copy 'qrpgleref/P736.rpgleinc'

dcl-ds theTable extname('T1711') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1711 LIMIT 1;

theCharVar = 'Hello from P3621';
dsply theCharVar;
P598();
P246();
P736();
return;