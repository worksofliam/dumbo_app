**free

ctl-opt dftactgrp(*no);

dcl-pi P1427;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P888.rpgleinc'
/copy 'qrpgleref/P142.rpgleinc'
/copy 'qrpgleref/P927.rpgleinc'

dcl-ds theTable extname('T28') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T28 LIMIT 1;

theCharVar = 'Hello from P1427';
dsply theCharVar;
P888();
P142();
P927();
return;