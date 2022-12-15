**free

ctl-opt dftactgrp(*no);

dcl-pi P4426;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3072.rpgleinc'
/copy 'qrpgleref/P3337.rpgleinc'
/copy 'qrpgleref/P3022.rpgleinc'

dcl-ds theTable extname('T1489') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1489 LIMIT 1;

theCharVar = 'Hello from P4426';
dsply theCharVar;
P3072();
P3337();
P3022();
return;