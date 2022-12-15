**free

ctl-opt dftactgrp(*no);

dcl-pi P181;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P173.rpgleinc'
/copy 'qrpgleref/P158.rpgleinc'
/copy 'qrpgleref/P149.rpgleinc'

dcl-ds theTable extname('T202') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T202 LIMIT 1;

theCharVar = 'Hello from P181';
dsply theCharVar;
P173();
P158();
P149();
return;