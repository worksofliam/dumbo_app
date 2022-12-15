**free

ctl-opt dftactgrp(*no);

dcl-pi P1396;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P788.rpgleinc'
/copy 'qrpgleref/P1195.rpgleinc'
/copy 'qrpgleref/P341.rpgleinc'

dcl-ds theTable extname('T826') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T826 LIMIT 1;

theCharVar = 'Hello from P1396';
dsply theCharVar;
P788();
P1195();
P341();
return;