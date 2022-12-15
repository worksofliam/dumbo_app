**free

ctl-opt dftactgrp(*no);

dcl-pi P2921;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1659.rpgleinc'
/copy 'qrpgleref/P2222.rpgleinc'
/copy 'qrpgleref/P978.rpgleinc'

dcl-ds theTable extname('T1260') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1260 LIMIT 1;

theCharVar = 'Hello from P2921';
dsply theCharVar;
P1659();
P2222();
P978();
return;