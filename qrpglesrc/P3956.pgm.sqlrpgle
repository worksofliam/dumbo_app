**free

ctl-opt dftactgrp(*no);

dcl-pi P3956;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2698.rpgleinc'
/copy 'qrpgleref/P1336.rpgleinc'
/copy 'qrpgleref/P991.rpgleinc'

dcl-ds theTable extname('T573') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T573 LIMIT 1;

theCharVar = 'Hello from P3956';
dsply theCharVar;
P2698();
P1336();
P991();
return;