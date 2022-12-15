**free

ctl-opt dftactgrp(*no);

dcl-pi P2554;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P417.rpgleinc'
/copy 'qrpgleref/P748.rpgleinc'
/copy 'qrpgleref/P638.rpgleinc'

dcl-ds theTable extname('T1523') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1523 LIMIT 1;

theCharVar = 'Hello from P2554';
dsply theCharVar;
P417();
P748();
P638();
return;