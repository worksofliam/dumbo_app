**free

ctl-opt dftactgrp(*no);

dcl-pi P2941;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1905.rpgleinc'
/copy 'qrpgleref/P794.rpgleinc'
/copy 'qrpgleref/P1730.rpgleinc'

dcl-ds theTable extname('T888') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T888 LIMIT 1;

theCharVar = 'Hello from P2941';
dsply theCharVar;
P1905();
P794();
P1730();
return;