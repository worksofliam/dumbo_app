**free

ctl-opt dftactgrp(*no);

dcl-pi P3258;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3016.rpgleinc'
/copy 'qrpgleref/P1740.rpgleinc'
/copy 'qrpgleref/P2031.rpgleinc'

dcl-ds theTable extname('T1007') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1007 LIMIT 1;

theCharVar = 'Hello from P3258';
dsply theCharVar;
P3016();
P1740();
P2031();
return;