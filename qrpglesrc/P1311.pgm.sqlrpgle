**free

ctl-opt dftactgrp(*no);

dcl-pi P1311;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P149.rpgleinc'
/copy 'qrpgleref/P853.rpgleinc'
/copy 'qrpgleref/P85.rpgleinc'

dcl-ds theTable extname('T610') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T610 LIMIT 1;

theCharVar = 'Hello from P1311';
dsply theCharVar;
P149();
P853();
P85();
return;