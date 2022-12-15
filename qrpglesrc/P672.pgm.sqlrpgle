**free

ctl-opt dftactgrp(*no);

dcl-pi P672;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P171.rpgleinc'
/copy 'qrpgleref/P534.rpgleinc'
/copy 'qrpgleref/P149.rpgleinc'

dcl-ds theTable extname('T21') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T21 LIMIT 1;

theCharVar = 'Hello from P672';
dsply theCharVar;
P171();
P534();
P149();
return;