**free

ctl-opt dftactgrp(*no);

dcl-pi P3554;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3063.rpgleinc'
/copy 'qrpgleref/P2967.rpgleinc'
/copy 'qrpgleref/P1607.rpgleinc'

dcl-ds theTable extname('T870') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T870 LIMIT 1;

theCharVar = 'Hello from P3554';
dsply theCharVar;
P3063();
P2967();
P1607();
return;