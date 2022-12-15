**free

ctl-opt dftactgrp(*no);

dcl-pi P69;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P51.rpgleinc'
/copy 'qrpgleref/P15.rpgleinc'
/copy 'qrpgleref/P61.rpgleinc'

dcl-ds theTable extname('T258') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T258 LIMIT 1;

theCharVar = 'Hello from P69';
dsply theCharVar;
P51();
P15();
P61();
return;