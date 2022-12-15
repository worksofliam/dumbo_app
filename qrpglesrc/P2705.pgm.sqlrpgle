**free

ctl-opt dftactgrp(*no);

dcl-pi P2705;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P1887.rpgleinc'
/copy 'qrpgleref/P2330.rpgleinc'

dcl-ds theTable extname('T939') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T939 LIMIT 1;

theCharVar = 'Hello from P2705';
dsply theCharVar;
P8();
P1887();
P2330();
return;