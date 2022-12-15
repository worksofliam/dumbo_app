**free

ctl-opt dftactgrp(*no);

dcl-pi P3217;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P446.rpgleinc'
/copy 'qrpgleref/P2302.rpgleinc'
/copy 'qrpgleref/P40.rpgleinc'

dcl-ds theTable extname('T1062') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1062 LIMIT 1;

theCharVar = 'Hello from P3217';
dsply theCharVar;
P446();
P2302();
P40();
return;