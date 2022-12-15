**free

ctl-opt dftactgrp(*no);

dcl-pi P5079;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P907.rpgleinc'
/copy 'qrpgleref/P1645.rpgleinc'
/copy 'qrpgleref/P2466.rpgleinc'

dcl-ds theTable extname('T42') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T42 LIMIT 1;

theCharVar = 'Hello from P5079';
dsply theCharVar;
P907();
P1645();
P2466();
return;