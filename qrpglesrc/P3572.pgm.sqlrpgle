**free

ctl-opt dftactgrp(*no);

dcl-pi P3572;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1721.rpgleinc'
/copy 'qrpgleref/P851.rpgleinc'
/copy 'qrpgleref/P1937.rpgleinc'

dcl-ds theTable extname('T876') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T876 LIMIT 1;

theCharVar = 'Hello from P3572';
dsply theCharVar;
P1721();
P851();
P1937();
return;