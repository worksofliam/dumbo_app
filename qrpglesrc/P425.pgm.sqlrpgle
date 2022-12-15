**free

ctl-opt dftactgrp(*no);

dcl-pi P425;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P234.rpgleinc'
/copy 'qrpgleref/P4.rpgleinc'
/copy 'qrpgleref/P90.rpgleinc'

dcl-ds theTable extname('T37') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T37 LIMIT 1;

theCharVar = 'Hello from P425';
dsply theCharVar;
P234();
P4();
P90();
return;