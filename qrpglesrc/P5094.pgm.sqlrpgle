**free

ctl-opt dftactgrp(*no);

dcl-pi P5094;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2403.rpgleinc'
/copy 'qrpgleref/P2278.rpgleinc'
/copy 'qrpgleref/P5059.rpgleinc'

dcl-ds theTable extname('T287') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T287 LIMIT 1;

theCharVar = 'Hello from P5094';
dsply theCharVar;
P2403();
P2278();
P5059();
return;