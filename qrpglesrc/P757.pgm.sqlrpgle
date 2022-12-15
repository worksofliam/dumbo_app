**free

ctl-opt dftactgrp(*no);

dcl-pi P757;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P377.rpgleinc'
/copy 'qrpgleref/P612.rpgleinc'
/copy 'qrpgleref/P367.rpgleinc'

dcl-ds theTable extname('T1475') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1475 LIMIT 1;

theCharVar = 'Hello from P757';
dsply theCharVar;
P377();
P612();
P367();
return;