**free

ctl-opt dftactgrp(*no);

dcl-pi P2790;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2697.rpgleinc'
/copy 'qrpgleref/P1747.rpgleinc'
/copy 'qrpgleref/P1353.rpgleinc'

dcl-ds theTable extname('T1200') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1200 LIMIT 1;

theCharVar = 'Hello from P2790';
dsply theCharVar;
P2697();
P1747();
P1353();
return;