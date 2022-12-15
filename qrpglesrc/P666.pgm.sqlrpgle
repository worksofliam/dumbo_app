**free

ctl-opt dftactgrp(*no);

dcl-pi P666;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P298.rpgleinc'
/copy 'qrpgleref/P205.rpgleinc'
/copy 'qrpgleref/P443.rpgleinc'

dcl-ds theTable extname('T1237') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1237 LIMIT 1;

theCharVar = 'Hello from P666';
dsply theCharVar;
P298();
P205();
P443();
return;