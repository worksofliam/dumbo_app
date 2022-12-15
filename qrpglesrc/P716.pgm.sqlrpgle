**free

ctl-opt dftactgrp(*no);

dcl-pi P716;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P87.rpgleinc'
/copy 'qrpgleref/P505.rpgleinc'
/copy 'qrpgleref/P652.rpgleinc'

dcl-ds T1180 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1180 FROM T1180 LIMIT 1;

theCharVar = 'Hello from P716';
dsply theCharVar;
P87();
P505();
P652();
return;