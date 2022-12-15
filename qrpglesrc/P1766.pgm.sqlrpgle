**free

ctl-opt dftactgrp(*no);

dcl-pi P1766;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1755.rpgleinc'
/copy 'qrpgleref/P838.rpgleinc'
/copy 'qrpgleref/P1612.rpgleinc'

dcl-ds theTable extname('T1106') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1106 LIMIT 1;

theCharVar = 'Hello from P1766';
dsply theCharVar;
P1755();
P838();
P1612();
return;