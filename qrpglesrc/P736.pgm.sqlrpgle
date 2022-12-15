**free

ctl-opt dftactgrp(*no);

dcl-pi P736;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P507.rpgleinc'
/copy 'qrpgleref/P270.rpgleinc'
/copy 'qrpgleref/P89.rpgleinc'

dcl-ds theTable extname('T30') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T30 LIMIT 1;

theCharVar = 'Hello from P736';
dsply theCharVar;
P507();
P270();
P89();
return;