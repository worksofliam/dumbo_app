**free

ctl-opt dftactgrp(*no);

dcl-pi P3982;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P255.rpgleinc'
/copy 'qrpgleref/P3392.rpgleinc'
/copy 'qrpgleref/P2967.rpgleinc'

dcl-ds theTable extname('T1612') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1612 LIMIT 1;

theCharVar = 'Hello from P3982';
dsply theCharVar;
P255();
P3392();
P2967();
return;