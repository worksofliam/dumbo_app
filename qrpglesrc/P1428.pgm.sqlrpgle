**free

ctl-opt dftactgrp(*no);

dcl-pi P1428;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1311.rpgleinc'
/copy 'qrpgleref/P1317.rpgleinc'
/copy 'qrpgleref/P294.rpgleinc'

dcl-ds theTable extname('T331') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T331 LIMIT 1;

theCharVar = 'Hello from P1428';
dsply theCharVar;
P1311();
P1317();
P294();
return;