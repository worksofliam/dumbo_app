**free

ctl-opt dftactgrp(*no);

dcl-pi P3338;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2641.rpgleinc'
/copy 'qrpgleref/P2268.rpgleinc'
/copy 'qrpgleref/P2502.rpgleinc'

dcl-ds theTable extname('T530') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T530 LIMIT 1;

theCharVar = 'Hello from P3338';
dsply theCharVar;
P2641();
P2268();
P2502();
return;