**free

ctl-opt dftactgrp(*no);

dcl-pi P4270;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1844.rpgleinc'
/copy 'qrpgleref/P1874.rpgleinc'
/copy 'qrpgleref/P1642.rpgleinc'

dcl-ds theTable extname('T17') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T17 LIMIT 1;

theCharVar = 'Hello from P4270';
dsply theCharVar;
P1844();
P1874();
P1642();
return;