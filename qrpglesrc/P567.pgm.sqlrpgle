**free

ctl-opt dftactgrp(*no);

dcl-pi P567;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P158.rpgleinc'
/copy 'qrpgleref/P17.rpgleinc'
/copy 'qrpgleref/P521.rpgleinc'

dcl-ds theTable extname('T494') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T494 LIMIT 1;

theCharVar = 'Hello from P567';
dsply theCharVar;
P158();
P17();
P521();
return;