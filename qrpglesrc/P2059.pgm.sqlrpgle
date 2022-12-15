**free

ctl-opt dftactgrp(*no);

dcl-pi P2059;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1944.rpgleinc'
/copy 'qrpgleref/P1654.rpgleinc'
/copy 'qrpgleref/P806.rpgleinc'

dcl-ds theTable extname('T571') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T571 LIMIT 1;

theCharVar = 'Hello from P2059';
dsply theCharVar;
P1944();
P1654();
P806();
return;