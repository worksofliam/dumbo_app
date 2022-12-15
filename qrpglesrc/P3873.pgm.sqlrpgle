**free

ctl-opt dftactgrp(*no);

dcl-pi P3873;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2664.rpgleinc'
/copy 'qrpgleref/P481.rpgleinc'
/copy 'qrpgleref/P3846.rpgleinc'

dcl-ds theTable extname('T1854') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1854 LIMIT 1;

theCharVar = 'Hello from P3873';
dsply theCharVar;
P2664();
P481();
P3846();
return;