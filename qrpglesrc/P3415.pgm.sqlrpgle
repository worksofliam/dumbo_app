**free

ctl-opt dftactgrp(*no);

dcl-pi P3415;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1170.rpgleinc'
/copy 'qrpgleref/P214.rpgleinc'
/copy 'qrpgleref/P3322.rpgleinc'

dcl-ds theTable extname('T957') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T957 LIMIT 1;

theCharVar = 'Hello from P3415';
dsply theCharVar;
P1170();
P214();
P3322();
return;