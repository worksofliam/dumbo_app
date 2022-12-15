**free

ctl-opt dftactgrp(*no);

dcl-pi P1043;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P332.rpgleinc'
/copy 'qrpgleref/P562.rpgleinc'
/copy 'qrpgleref/P845.rpgleinc'

dcl-ds theTable extname('T67') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T67 LIMIT 1;

theCharVar = 'Hello from P1043';
dsply theCharVar;
P332();
P562();
P845();
return;