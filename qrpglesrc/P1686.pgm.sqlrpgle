**free

ctl-opt dftactgrp(*no);

dcl-pi P1686;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P61.rpgleinc'
/copy 'qrpgleref/P1424.rpgleinc'
/copy 'qrpgleref/P467.rpgleinc'

dcl-ds theTable extname('T307') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T307 LIMIT 1;

theCharVar = 'Hello from P1686';
dsply theCharVar;
P61();
P1424();
P467();
return;