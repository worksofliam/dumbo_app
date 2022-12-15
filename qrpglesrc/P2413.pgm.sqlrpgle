**free

ctl-opt dftactgrp(*no);

dcl-pi P2413;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1073.rpgleinc'
/copy 'qrpgleref/P2133.rpgleinc'
/copy 'qrpgleref/P502.rpgleinc'

dcl-ds theTable extname('T694') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T694 LIMIT 1;

theCharVar = 'Hello from P2413';
dsply theCharVar;
P1073();
P2133();
P502();
return;