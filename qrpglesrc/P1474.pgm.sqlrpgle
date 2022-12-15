**free

ctl-opt dftactgrp(*no);

dcl-pi P1474;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1322.rpgleinc'
/copy 'qrpgleref/P1188.rpgleinc'
/copy 'qrpgleref/P686.rpgleinc'

dcl-ds theTable extname('T297') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T297 LIMIT 1;

theCharVar = 'Hello from P1474';
dsply theCharVar;
P1322();
P1188();
P686();
return;