**free

ctl-opt dftactgrp(*no);

dcl-pi P1415;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1245.rpgleinc'
/copy 'qrpgleref/P95.rpgleinc'
/copy 'qrpgleref/P858.rpgleinc'

dcl-ds theTable extname('T17') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T17 LIMIT 1;

theCharVar = 'Hello from P1415';
dsply theCharVar;
P1245();
P95();
P858();
return;