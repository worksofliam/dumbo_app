**free

ctl-opt dftactgrp(*no);

dcl-pi P1437;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P191.rpgleinc'
/copy 'qrpgleref/P668.rpgleinc'
/copy 'qrpgleref/P1288.rpgleinc'

dcl-ds theTable extname('T346') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T346 LIMIT 1;

theCharVar = 'Hello from P1437';
dsply theCharVar;
P191();
P668();
P1288();
return;