**free

ctl-opt dftactgrp(*no);

dcl-pi P1710;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1031.rpgleinc'
/copy 'qrpgleref/P963.rpgleinc'
/copy 'qrpgleref/P1213.rpgleinc'

dcl-ds theTable extname('T1014') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1014 LIMIT 1;

theCharVar = 'Hello from P1710';
dsply theCharVar;
P1031();
P963();
P1213();
return;