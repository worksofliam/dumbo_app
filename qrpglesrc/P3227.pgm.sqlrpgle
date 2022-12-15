**free

ctl-opt dftactgrp(*no);

dcl-pi P3227;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2372.rpgleinc'
/copy 'qrpgleref/P422.rpgleinc'
/copy 'qrpgleref/P1242.rpgleinc'

dcl-ds theTable extname('T1065') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1065 LIMIT 1;

theCharVar = 'Hello from P3227';
dsply theCharVar;
P2372();
P422();
P1242();
return;