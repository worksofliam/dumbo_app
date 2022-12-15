**free

ctl-opt dftactgrp(*no);

dcl-pi P251;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P189.rpgleinc'
/copy 'qrpgleref/P52.rpgleinc'
/copy 'qrpgleref/P130.rpgleinc'

dcl-ds theTable extname('T755') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T755 LIMIT 1;

theCharVar = 'Hello from P251';
dsply theCharVar;
P189();
P52();
P130();
return;