**free

ctl-opt dftactgrp(*no);

dcl-pi P2434;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1057.rpgleinc'
/copy 'qrpgleref/P1241.rpgleinc'
/copy 'qrpgleref/P500.rpgleinc'

dcl-ds theTable extname('T172') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T172 LIMIT 1;

theCharVar = 'Hello from P2434';
dsply theCharVar;
P1057();
P1241();
P500();
return;