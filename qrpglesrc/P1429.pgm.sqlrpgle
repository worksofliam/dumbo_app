**free

ctl-opt dftactgrp(*no);

dcl-pi P1429;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P824.rpgleinc'
/copy 'qrpgleref/P1342.rpgleinc'
/copy 'qrpgleref/P827.rpgleinc'

dcl-ds theTable extname('T379') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T379 LIMIT 1;

theCharVar = 'Hello from P1429';
dsply theCharVar;
P824();
P1342();
P827();
return;