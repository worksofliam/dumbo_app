**free

ctl-opt dftactgrp(*no);

dcl-pi P1390;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P966.rpgleinc'
/copy 'qrpgleref/P558.rpgleinc'
/copy 'qrpgleref/P298.rpgleinc'

dcl-ds theTable extname('T464') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T464 LIMIT 1;

theCharVar = 'Hello from P1390';
dsply theCharVar;
P966();
P558();
P298();
return;