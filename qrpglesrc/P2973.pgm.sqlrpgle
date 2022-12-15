**free

ctl-opt dftactgrp(*no);

dcl-pi P2973;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P680.rpgleinc'
/copy 'qrpgleref/P1808.rpgleinc'
/copy 'qrpgleref/P432.rpgleinc'

dcl-ds theTable extname('T629') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T629 LIMIT 1;

theCharVar = 'Hello from P2973';
dsply theCharVar;
P680();
P1808();
P432();
return;