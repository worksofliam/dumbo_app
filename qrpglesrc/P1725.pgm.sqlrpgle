**free

ctl-opt dftactgrp(*no);

dcl-pi P1725;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1044.rpgleinc'
/copy 'qrpgleref/P349.rpgleinc'
/copy 'qrpgleref/P197.rpgleinc'

dcl-ds theTable extname('T494') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T494 LIMIT 1;

theCharVar = 'Hello from P1725';
dsply theCharVar;
P1044();
P349();
P197();
return;