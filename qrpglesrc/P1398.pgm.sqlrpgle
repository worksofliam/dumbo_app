**free

ctl-opt dftactgrp(*no);

dcl-pi P1398;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1290.rpgleinc'
/copy 'qrpgleref/P1149.rpgleinc'
/copy 'qrpgleref/P832.rpgleinc'

dcl-ds T131 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T131 FROM T131 LIMIT 1;

theCharVar = 'Hello from P1398';
dsply theCharVar;
P1290();
P1149();
P832();
return;