**free

ctl-opt dftactgrp(*no);

dcl-pi P1022;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P334.rpgleinc'
/copy 'qrpgleref/P171.rpgleinc'
/copy 'qrpgleref/P509.rpgleinc'

dcl-ds theTable extname('T233') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T233 LIMIT 1;

theCharVar = 'Hello from P1022';
dsply theCharVar;
P334();
P171();
P509();
return;