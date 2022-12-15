**free

ctl-opt dftactgrp(*no);

dcl-pi P2115;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P700.rpgleinc'
/copy 'qrpgleref/P1200.rpgleinc'
/copy 'qrpgleref/P154.rpgleinc'

dcl-ds theTable extname('T1779') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1779 LIMIT 1;

theCharVar = 'Hello from P2115';
dsply theCharVar;
P700();
P1200();
P154();
return;