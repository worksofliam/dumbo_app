**free

ctl-opt dftactgrp(*no);

dcl-pi P63;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P36.rpgleinc'
/copy 'qrpgleref/P17.rpgleinc'
/copy 'qrpgleref/P50.rpgleinc'

dcl-ds theTable extname('T67') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T67 LIMIT 1;

theCharVar = 'Hello from P63';
dsply theCharVar;
P36();
P17();
P50();
return;