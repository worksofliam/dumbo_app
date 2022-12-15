**free

ctl-opt dftactgrp(*no);

dcl-pi P1376;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P110.rpgleinc'
/copy 'qrpgleref/P1206.rpgleinc'
/copy 'qrpgleref/P348.rpgleinc'

dcl-ds theTable extname('T498') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T498 LIMIT 1;

theCharVar = 'Hello from P1376';
dsply theCharVar;
P110();
P1206();
P348();
return;