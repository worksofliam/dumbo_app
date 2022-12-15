**free

ctl-opt dftactgrp(*no);

dcl-pi P2853;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1414.rpgleinc'
/copy 'qrpgleref/P2635.rpgleinc'
/copy 'qrpgleref/P2278.rpgleinc'

dcl-ds theTable extname('T1159') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1159 LIMIT 1;

theCharVar = 'Hello from P2853';
dsply theCharVar;
P1414();
P2635();
P2278();
return;