**free

ctl-opt dftactgrp(*no);

dcl-pi P2717;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1898.rpgleinc'
/copy 'qrpgleref/P2475.rpgleinc'
/copy 'qrpgleref/P2329.rpgleinc'

dcl-ds theTable extname('T440') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T440 LIMIT 1;

theCharVar = 'Hello from P2717';
dsply theCharVar;
P1898();
P2475();
P2329();
return;