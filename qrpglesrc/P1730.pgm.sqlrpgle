**free

ctl-opt dftactgrp(*no);

dcl-pi P1730;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P981.rpgleinc'
/copy 'qrpgleref/P1375.rpgleinc'
/copy 'qrpgleref/P1528.rpgleinc'

dcl-ds theTable extname('T908') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T908 LIMIT 1;

theCharVar = 'Hello from P1730';
dsply theCharVar;
P981();
P1375();
P1528();
return;