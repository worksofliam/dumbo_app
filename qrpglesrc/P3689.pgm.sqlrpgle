**free

ctl-opt dftactgrp(*no);

dcl-pi P3689;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2053.rpgleinc'
/copy 'qrpgleref/P3615.rpgleinc'
/copy 'qrpgleref/P500.rpgleinc'

dcl-ds theTable extname('T877') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T877 LIMIT 1;

theCharVar = 'Hello from P3689';
dsply theCharVar;
P2053();
P3615();
P500();
return;