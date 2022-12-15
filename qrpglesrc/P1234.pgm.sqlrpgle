**free

ctl-opt dftactgrp(*no);

dcl-pi P1234;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P517.rpgleinc'
/copy 'qrpgleref/P1138.rpgleinc'
/copy 'qrpgleref/P254.rpgleinc'

dcl-ds theTable extname('T704') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T704 LIMIT 1;

theCharVar = 'Hello from P1234';
dsply theCharVar;
P517();
P1138();
P254();
return;