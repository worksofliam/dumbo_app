**free

ctl-opt dftactgrp(*no);

dcl-pi P574;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P371.rpgleinc'
/copy 'qrpgleref/P172.rpgleinc'
/copy 'qrpgleref/P434.rpgleinc'

dcl-ds theTable extname('T82') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T82 LIMIT 1;

theCharVar = 'Hello from P574';
dsply theCharVar;
P371();
P172();
P434();
return;