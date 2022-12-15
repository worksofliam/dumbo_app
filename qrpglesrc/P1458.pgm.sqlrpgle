**free

ctl-opt dftactgrp(*no);

dcl-pi P1458;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P712.rpgleinc'
/copy 'qrpgleref/P1280.rpgleinc'
/copy 'qrpgleref/P1274.rpgleinc'

dcl-ds theTable extname('T1345') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1345 LIMIT 1;

theCharVar = 'Hello from P1458';
dsply theCharVar;
P712();
P1280();
P1274();
return;