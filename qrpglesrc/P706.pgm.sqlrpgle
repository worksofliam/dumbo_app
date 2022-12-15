**free

ctl-opt dftactgrp(*no);

dcl-pi P706;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P43.rpgleinc'
/copy 'qrpgleref/P551.rpgleinc'
/copy 'qrpgleref/P426.rpgleinc'

dcl-ds theTable extname('T852') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T852 LIMIT 1;

theCharVar = 'Hello from P706';
dsply theCharVar;
P43();
P551();
P426();
return;