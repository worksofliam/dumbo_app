**free

ctl-opt dftactgrp(*no);

dcl-pi P2026;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1683.rpgleinc'
/copy 'qrpgleref/P897.rpgleinc'
/copy 'qrpgleref/P553.rpgleinc'

dcl-ds theTable extname('T923') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T923 LIMIT 1;

theCharVar = 'Hello from P2026';
dsply theCharVar;
P1683();
P897();
P553();
return;