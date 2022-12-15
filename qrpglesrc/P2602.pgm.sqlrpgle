**free

ctl-opt dftactgrp(*no);

dcl-pi P2602;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1661.rpgleinc'
/copy 'qrpgleref/P984.rpgleinc'
/copy 'qrpgleref/P62.rpgleinc'

dcl-ds theTable extname('T1012') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1012 LIMIT 1;

theCharVar = 'Hello from P2602';
dsply theCharVar;
P1661();
P984();
P62();
return;