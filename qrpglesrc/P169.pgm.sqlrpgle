**free

ctl-opt dftactgrp(*no);

dcl-pi P169;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5.rpgleinc'
/copy 'qrpgleref/P137.rpgleinc'
/copy 'qrpgleref/P90.rpgleinc'

dcl-ds theTable extname('T308') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T308 LIMIT 1;

theCharVar = 'Hello from P169';
dsply theCharVar;
P5();
P137();
P90();
return;