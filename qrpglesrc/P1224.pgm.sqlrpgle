**free

ctl-opt dftactgrp(*no);

dcl-pi P1224;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P126.rpgleinc'
/copy 'qrpgleref/P755.rpgleinc'
/copy 'qrpgleref/P221.rpgleinc'

dcl-ds theTable extname('T1515') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1515 LIMIT 1;

theCharVar = 'Hello from P1224';
dsply theCharVar;
P126();
P755();
P221();
return;