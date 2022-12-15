**free

ctl-opt dftactgrp(*no);

dcl-pi P1115;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P295.rpgleinc'
/copy 'qrpgleref/P613.rpgleinc'
/copy 'qrpgleref/P588.rpgleinc'

dcl-ds theTable extname('T1612') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1612 LIMIT 1;

theCharVar = 'Hello from P1115';
dsply theCharVar;
P295();
P613();
P588();
return;