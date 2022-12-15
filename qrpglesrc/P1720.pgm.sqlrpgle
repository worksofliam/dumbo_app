**free

ctl-opt dftactgrp(*no);

dcl-pi P1720;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1668.rpgleinc'
/copy 'qrpgleref/P502.rpgleinc'
/copy 'qrpgleref/P1677.rpgleinc'

dcl-ds T744 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T744 FROM T744 LIMIT 1;

theCharVar = 'Hello from P1720';
dsply theCharVar;
P1668();
P502();
P1677();
return;