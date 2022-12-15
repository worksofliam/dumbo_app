**free

ctl-opt dftactgrp(*no);

dcl-pi P5583;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P10.rpgleinc'
/copy 'qrpgleref/P4451.rpgleinc'
/copy 'qrpgleref/P2476.rpgleinc'

dcl-ds theTable extname('T1453') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1453 LIMIT 1;

theCharVar = 'Hello from P5583';
dsply theCharVar;
P10();
P4451();
P2476();
return;