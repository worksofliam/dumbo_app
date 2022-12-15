**free

ctl-opt dftactgrp(*no);

dcl-pi P1471;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P378.rpgleinc'
/copy 'qrpgleref/P717.rpgleinc'
/copy 'qrpgleref/P733.rpgleinc'

dcl-ds theTable extname('T491') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T491 LIMIT 1;

theCharVar = 'Hello from P1471';
dsply theCharVar;
P378();
P717();
P733();
return;