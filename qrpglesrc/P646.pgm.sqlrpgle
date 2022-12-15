**free

ctl-opt dftactgrp(*no);

dcl-pi P646;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P456.rpgleinc'
/copy 'qrpgleref/P529.rpgleinc'
/copy 'qrpgleref/P48.rpgleinc'

dcl-ds theTable extname('T0') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T0 LIMIT 1;

theCharVar = 'Hello from P646';
dsply theCharVar;
P456();
P529();
P48();
return;