**free

ctl-opt dftactgrp(*no);

dcl-pi P56;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P26.rpgleinc'
/copy 'qrpgleref/P38.rpgleinc'
/copy 'qrpgleref/P51.rpgleinc'

dcl-ds theTable extname('T750') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T750 LIMIT 1;

theCharVar = 'Hello from P56';
dsply theCharVar;
P26();
P38();
P51();
return;