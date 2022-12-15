**free

ctl-opt dftactgrp(*no);

dcl-pi P5198;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2495.rpgleinc'
/copy 'qrpgleref/P1723.rpgleinc'
/copy 'qrpgleref/P208.rpgleinc'

dcl-ds theTable extname('T1414') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1414 LIMIT 1;

theCharVar = 'Hello from P5198';
dsply theCharVar;
P2495();
P1723();
P208();
return;