**free

ctl-opt dftactgrp(*no);

dcl-pi P1294;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P401.rpgleinc'
/copy 'qrpgleref/P133.rpgleinc'
/copy 'qrpgleref/P272.rpgleinc'

dcl-ds theTable extname('T1445') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1445 LIMIT 1;

theCharVar = 'Hello from P1294';
dsply theCharVar;
P401();
P133();
P272();
return;