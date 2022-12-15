**free

ctl-opt dftactgrp(*no);

dcl-pi P2209;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P789.rpgleinc'
/copy 'qrpgleref/P307.rpgleinc'
/copy 'qrpgleref/P1891.rpgleinc'

dcl-ds theTable extname('T593') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T593 LIMIT 1;

theCharVar = 'Hello from P2209';
dsply theCharVar;
P789();
P307();
P1891();
return;