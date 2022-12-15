**free

ctl-opt dftactgrp(*no);

dcl-pi P3248;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2447.rpgleinc'
/copy 'qrpgleref/P1779.rpgleinc'
/copy 'qrpgleref/P2183.rpgleinc'

dcl-ds theTable extname('T455') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T455 LIMIT 1;

theCharVar = 'Hello from P3248';
dsply theCharVar;
P2447();
P1779();
P2183();
return;