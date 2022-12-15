**free

ctl-opt dftactgrp(*no);

dcl-pi P5251;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3663.rpgleinc'
/copy 'qrpgleref/P1479.rpgleinc'
/copy 'qrpgleref/P3342.rpgleinc'

dcl-ds theTable extname('T215') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T215 LIMIT 1;

theCharVar = 'Hello from P5251';
dsply theCharVar;
P3663();
P1479();
P3342();
return;