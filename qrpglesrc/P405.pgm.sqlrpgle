**free

ctl-opt dftactgrp(*no);

dcl-pi P405;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P57.rpgleinc'
/copy 'qrpgleref/P152.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'

dcl-ds theTable extname('T996') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T996 LIMIT 1;

theCharVar = 'Hello from P405';
dsply theCharVar;
P57();
P152();
P6();
return;