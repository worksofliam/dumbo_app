**free

ctl-opt dftactgrp(*no);

dcl-pi P169;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P154.rpgleinc'
/copy 'qrpgleref/P122.rpgleinc'
/copy 'qrpgleref/P134.rpgleinc'

dcl-ds theTable extname('T230') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T230 LIMIT 1;

theCharVar = 'Hello from P169';
dsply theCharVar;
P154();
P122();
P134();
return;