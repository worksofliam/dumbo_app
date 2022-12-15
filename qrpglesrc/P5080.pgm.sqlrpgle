**free

ctl-opt dftactgrp(*no);

dcl-pi P5080;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P408.rpgleinc'
/copy 'qrpgleref/P1576.rpgleinc'
/copy 'qrpgleref/P760.rpgleinc'

dcl-ds theTable extname('T640') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T640 LIMIT 1;

theCharVar = 'Hello from P5080';
dsply theCharVar;
P408();
P1576();
P760();
return;