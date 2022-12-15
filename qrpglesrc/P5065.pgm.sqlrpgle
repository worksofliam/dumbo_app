**free

ctl-opt dftactgrp(*no);

dcl-pi P5065;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4955.rpgleinc'
/copy 'qrpgleref/P1978.rpgleinc'
/copy 'qrpgleref/P4694.rpgleinc'

dcl-ds theTable extname('T1563') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1563 LIMIT 1;

theCharVar = 'Hello from P5065';
dsply theCharVar;
P4955();
P1978();
P4694();
return;