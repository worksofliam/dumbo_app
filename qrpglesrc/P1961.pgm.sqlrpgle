**free

ctl-opt dftactgrp(*no);

dcl-pi P1961;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1903.rpgleinc'
/copy 'qrpgleref/P181.rpgleinc'
/copy 'qrpgleref/P1286.rpgleinc'

dcl-ds theTable extname('T870') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T870 LIMIT 1;

theCharVar = 'Hello from P1961';
dsply theCharVar;
P1903();
P181();
P1286();
return;