**free

ctl-opt dftactgrp(*no);

dcl-pi P1419;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P533.rpgleinc'
/copy 'qrpgleref/P1255.rpgleinc'
/copy 'qrpgleref/P1274.rpgleinc'

dcl-ds theTable extname('T907') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T907 LIMIT 1;

theCharVar = 'Hello from P1419';
dsply theCharVar;
P533();
P1255();
P1274();
return;