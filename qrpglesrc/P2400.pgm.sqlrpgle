**free

ctl-opt dftactgrp(*no);

dcl-pi P2400;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2136.rpgleinc'
/copy 'qrpgleref/P682.rpgleinc'
/copy 'qrpgleref/P2209.rpgleinc'

dcl-ds theTable extname('T669') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T669 LIMIT 1;

theCharVar = 'Hello from P2400';
dsply theCharVar;
P2136();
P682();
P2209();
return;