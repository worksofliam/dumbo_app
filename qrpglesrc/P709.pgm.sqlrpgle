**free

ctl-opt dftactgrp(*no);

dcl-pi P709;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P618.rpgleinc'
/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P696.rpgleinc'

dcl-ds T95 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T95 FROM T95 LIMIT 1;

theCharVar = 'Hello from P709';
dsply theCharVar;
P618();
P9();
P696();
return;