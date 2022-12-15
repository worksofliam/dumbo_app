**free

ctl-opt dftactgrp(*no);

dcl-pi P3615;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3086.rpgleinc'
/copy 'qrpgleref/P2407.rpgleinc'
/copy 'qrpgleref/P1473.rpgleinc'

dcl-ds theTable extname('T769') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T769 LIMIT 1;

theCharVar = 'Hello from P3615';
dsply theCharVar;
P3086();
P2407();
P1473();
return;