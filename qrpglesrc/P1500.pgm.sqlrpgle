**free

ctl-opt dftactgrp(*no);

dcl-pi P1500;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1168.rpgleinc'
/copy 'qrpgleref/P1479.rpgleinc'
/copy 'qrpgleref/P543.rpgleinc'

dcl-ds theTable extname('T815') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T815 LIMIT 1;

theCharVar = 'Hello from P1500';
dsply theCharVar;
P1168();
P1479();
P543();
return;