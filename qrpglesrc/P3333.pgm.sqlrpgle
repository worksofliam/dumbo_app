**free

ctl-opt dftactgrp(*no);

dcl-pi P3333;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1279.rpgleinc'
/copy 'qrpgleref/P2118.rpgleinc'
/copy 'qrpgleref/P668.rpgleinc'

dcl-ds theTable extname('T1097') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1097 LIMIT 1;

theCharVar = 'Hello from P3333';
dsply theCharVar;
P1279();
P2118();
P668();
return;