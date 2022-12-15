**free

ctl-opt dftactgrp(*no);

dcl-pi P3063;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1067.rpgleinc'
/copy 'qrpgleref/P672.rpgleinc'
/copy 'qrpgleref/P411.rpgleinc'

dcl-ds theTable extname('T607') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T607 LIMIT 1;

theCharVar = 'Hello from P3063';
dsply theCharVar;
P1067();
P672();
P411();
return;