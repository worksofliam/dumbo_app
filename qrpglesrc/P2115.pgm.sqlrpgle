**free

ctl-opt dftactgrp(*no);

dcl-pi P2115;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1031.rpgleinc'
/copy 'qrpgleref/P1161.rpgleinc'
/copy 'qrpgleref/P610.rpgleinc'

dcl-ds theTable extname('T102') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T102 LIMIT 1;

theCharVar = 'Hello from P2115';
dsply theCharVar;
P1031();
P1161();
P610();
return;