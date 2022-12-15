**free

ctl-opt dftactgrp(*no);

dcl-pi P178;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P147.rpgleinc'
/copy 'qrpgleref/P33.rpgleinc'
/copy 'qrpgleref/P29.rpgleinc'

dcl-ds theTable extname('T1112') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1112 LIMIT 1;

theCharVar = 'Hello from P178';
dsply theCharVar;
P147();
P33();
P29();
return;