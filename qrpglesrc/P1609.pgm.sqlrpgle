**free

ctl-opt dftactgrp(*no);

dcl-pi P1609;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1406.rpgleinc'
/copy 'qrpgleref/P1006.rpgleinc'
/copy 'qrpgleref/P267.rpgleinc'

dcl-ds theTable extname('T875') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T875 LIMIT 1;

theCharVar = 'Hello from P1609';
dsply theCharVar;
P1406();
P1006();
P267();
return;