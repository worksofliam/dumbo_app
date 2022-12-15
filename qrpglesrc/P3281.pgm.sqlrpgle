**free

ctl-opt dftactgrp(*no);

dcl-pi P3281;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2973.rpgleinc'
/copy 'qrpgleref/P3011.rpgleinc'
/copy 'qrpgleref/P70.rpgleinc'

dcl-ds theTable extname('T180') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T180 LIMIT 1;

theCharVar = 'Hello from P3281';
dsply theCharVar;
P2973();
P3011();
P70();
return;