**free

ctl-opt dftactgrp(*no);

dcl-pi P2510;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P882.rpgleinc'
/copy 'qrpgleref/P2421.rpgleinc'
/copy 'qrpgleref/P780.rpgleinc'

dcl-ds theTable extname('T1070') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1070 LIMIT 1;

theCharVar = 'Hello from P2510';
dsply theCharVar;
P882();
P2421();
P780();
return;