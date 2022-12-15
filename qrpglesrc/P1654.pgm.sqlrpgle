**free

ctl-opt dftactgrp(*no);

dcl-pi P1654;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1087.rpgleinc'
/copy 'qrpgleref/P1384.rpgleinc'
/copy 'qrpgleref/P1609.rpgleinc'

dcl-ds theTable extname('T589') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T589 LIMIT 1;

theCharVar = 'Hello from P1654';
dsply theCharVar;
P1087();
P1384();
P1609();
return;