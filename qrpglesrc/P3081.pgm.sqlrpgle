**free

ctl-opt dftactgrp(*no);

dcl-pi P3081;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2177.rpgleinc'
/copy 'qrpgleref/P2198.rpgleinc'
/copy 'qrpgleref/P1864.rpgleinc'

dcl-ds theTable extname('T428') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T428 LIMIT 1;

theCharVar = 'Hello from P3081';
dsply theCharVar;
P2177();
P2198();
P1864();
return;