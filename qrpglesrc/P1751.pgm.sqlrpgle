**free

ctl-opt dftactgrp(*no);

dcl-pi P1751;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P573.rpgleinc'
/copy 'qrpgleref/P761.rpgleinc'
/copy 'qrpgleref/P1486.rpgleinc'

dcl-ds theTable extname('T427') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T427 LIMIT 1;

theCharVar = 'Hello from P1751';
dsply theCharVar;
P573();
P761();
P1486();
return;