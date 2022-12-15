**free

ctl-opt dftactgrp(*no);

dcl-pi P1596;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1469.rpgleinc'
/copy 'qrpgleref/P668.rpgleinc'
/copy 'qrpgleref/P87.rpgleinc'

dcl-ds theTable extname('T119') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T119 LIMIT 1;

theCharVar = 'Hello from P1596';
dsply theCharVar;
P1469();
P668();
P87();
return;