**free

ctl-opt dftactgrp(*no);

dcl-pi P3094;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2231.rpgleinc'
/copy 'qrpgleref/P1414.rpgleinc'
/copy 'qrpgleref/P1385.rpgleinc'

dcl-ds theTable extname('T1374') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1374 LIMIT 1;

theCharVar = 'Hello from P3094';
dsply theCharVar;
P2231();
P1414();
P1385();
return;