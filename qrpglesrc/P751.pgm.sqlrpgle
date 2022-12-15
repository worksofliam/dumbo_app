**free

ctl-opt dftactgrp(*no);

dcl-pi P751;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P237.rpgleinc'
/copy 'qrpgleref/P540.rpgleinc'
/copy 'qrpgleref/P646.rpgleinc'

dcl-ds theTable extname('T75') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T75 LIMIT 1;

theCharVar = 'Hello from P751';
dsply theCharVar;
P237();
P540();
P646();
return;