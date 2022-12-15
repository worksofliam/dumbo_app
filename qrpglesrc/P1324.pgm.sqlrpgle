**free

ctl-opt dftactgrp(*no);

dcl-pi P1324;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1096.rpgleinc'
/copy 'qrpgleref/P646.rpgleinc'
/copy 'qrpgleref/P445.rpgleinc'

dcl-ds theTable extname('T792') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T792 LIMIT 1;

theCharVar = 'Hello from P1324';
dsply theCharVar;
P1096();
P646();
P445();
return;