**free

ctl-opt dftactgrp(*no);

dcl-pi P2998;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2624.rpgleinc'
/copy 'qrpgleref/P561.rpgleinc'
/copy 'qrpgleref/P2659.rpgleinc'

dcl-ds theTable extname('T1792') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1792 LIMIT 1;

theCharVar = 'Hello from P2998';
dsply theCharVar;
P2624();
P561();
P2659();
return;