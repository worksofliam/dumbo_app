**free

ctl-opt dftactgrp(*no);

dcl-pi P739;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P402.rpgleinc'
/copy 'qrpgleref/P507.rpgleinc'
/copy 'qrpgleref/P236.rpgleinc'

dcl-ds theTable extname('T556') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T556 LIMIT 1;

theCharVar = 'Hello from P739';
dsply theCharVar;
P402();
P507();
P236();
return;