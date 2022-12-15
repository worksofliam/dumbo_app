**free

ctl-opt dftactgrp(*no);

dcl-pi P3110;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1887.rpgleinc'
/copy 'qrpgleref/P2655.rpgleinc'
/copy 'qrpgleref/P684.rpgleinc'

dcl-ds theTable extname('T485') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T485 LIMIT 1;

theCharVar = 'Hello from P3110';
dsply theCharVar;
P1887();
P2655();
P684();
return;