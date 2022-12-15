**free

ctl-opt dftactgrp(*no);

dcl-pi P4781;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3454.rpgleinc'
/copy 'qrpgleref/P4763.rpgleinc'
/copy 'qrpgleref/P495.rpgleinc'

dcl-ds theTable extname('T480') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T480 LIMIT 1;

theCharVar = 'Hello from P4781';
dsply theCharVar;
P3454();
P4763();
P495();
return;