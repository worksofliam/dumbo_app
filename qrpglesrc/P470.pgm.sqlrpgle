**free

ctl-opt dftactgrp(*no);

dcl-pi P470;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P243.rpgleinc'
/copy 'qrpgleref/P65.rpgleinc'

dcl-ds theTable extname('T723') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T723 LIMIT 1;

theCharVar = 'Hello from P470';
dsply theCharVar;
P6();
P243();
P65();
return;