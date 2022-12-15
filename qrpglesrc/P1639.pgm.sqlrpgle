**free

ctl-opt dftactgrp(*no);

dcl-pi P1639;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P114.rpgleinc'
/copy 'qrpgleref/P991.rpgleinc'
/copy 'qrpgleref/P289.rpgleinc'

dcl-ds theTable extname('T947') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T947 LIMIT 1;

theCharVar = 'Hello from P1639';
dsply theCharVar;
P114();
P991();
P289();
return;