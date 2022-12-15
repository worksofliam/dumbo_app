**free

ctl-opt dftactgrp(*no);

dcl-pi P1078;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P917.rpgleinc'
/copy 'qrpgleref/P1058.rpgleinc'
/copy 'qrpgleref/P254.rpgleinc'

dcl-ds theTable extname('T188') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T188 LIMIT 1;

theCharVar = 'Hello from P1078';
dsply theCharVar;
P917();
P1058();
P254();
return;