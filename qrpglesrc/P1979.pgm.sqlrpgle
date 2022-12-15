**free

ctl-opt dftactgrp(*no);

dcl-pi P1979;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P487.rpgleinc'
/copy 'qrpgleref/P243.rpgleinc'
/copy 'qrpgleref/P198.rpgleinc'

dcl-ds theTable extname('T64') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T64 LIMIT 1;

theCharVar = 'Hello from P1979';
dsply theCharVar;
P487();
P243();
P198();
return;