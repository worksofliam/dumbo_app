**free

ctl-opt dftactgrp(*no);

dcl-pi P3409;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2879.rpgleinc'
/copy 'qrpgleref/P1490.rpgleinc'
/copy 'qrpgleref/P687.rpgleinc'

dcl-ds theTable extname('T227') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T227 LIMIT 1;

theCharVar = 'Hello from P3409';
dsply theCharVar;
P2879();
P1490();
P687();
return;