**free

ctl-opt dftactgrp(*no);

dcl-pi P229;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P41.rpgleinc'
/copy 'qrpgleref/P60.rpgleinc'
/copy 'qrpgleref/P29.rpgleinc'

dcl-ds theTable extname('T221') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T221 LIMIT 1;

theCharVar = 'Hello from P229';
dsply theCharVar;
P41();
P60();
P29();
return;