**free

ctl-opt dftactgrp(*no);

dcl-pi P5173;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4382.rpgleinc'
/copy 'qrpgleref/P2109.rpgleinc'
/copy 'qrpgleref/P4422.rpgleinc'

dcl-ds theTable extname('T1524') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1524 LIMIT 1;

theCharVar = 'Hello from P5173';
dsply theCharVar;
P4382();
P2109();
P4422();
return;