**free

ctl-opt dftactgrp(*no);

dcl-pi P467;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P37.rpgleinc'
/copy 'qrpgleref/P374.rpgleinc'
/copy 'qrpgleref/P359.rpgleinc'

dcl-ds theTable extname('T546') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T546 LIMIT 1;

theCharVar = 'Hello from P467';
dsply theCharVar;
P37();
P374();
P359();
return;