**free

ctl-opt dftactgrp(*no);

dcl-pi P3611;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2420.rpgleinc'
/copy 'qrpgleref/P3123.rpgleinc'
/copy 'qrpgleref/P722.rpgleinc'

dcl-ds theTable extname('T532') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T532 LIMIT 1;

theCharVar = 'Hello from P3611';
dsply theCharVar;
P2420();
P3123();
P722();
return;