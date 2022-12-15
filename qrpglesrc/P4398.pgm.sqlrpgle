**free

ctl-opt dftactgrp(*no);

dcl-pi P4398;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1124.rpgleinc'
/copy 'qrpgleref/P2371.rpgleinc'
/copy 'qrpgleref/P696.rpgleinc'

dcl-ds T1032 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1032 FROM T1032 LIMIT 1;

theCharVar = 'Hello from P4398';
dsply theCharVar;
P1124();
P2371();
P696();
return;