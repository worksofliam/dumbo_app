**free

ctl-opt dftactgrp(*no);

dcl-pi P1917;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P502.rpgleinc'
/copy 'qrpgleref/P1481.rpgleinc'
/copy 'qrpgleref/P284.rpgleinc'

dcl-ds T301 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T301 FROM T301 LIMIT 1;

theCharVar = 'Hello from P1917';
dsply theCharVar;
P502();
P1481();
P284();
return;