**free

ctl-opt dftactgrp(*no);

dcl-pi P1369;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P719.rpgleinc'
/copy 'qrpgleref/P84.rpgleinc'
/copy 'qrpgleref/P1218.rpgleinc'

dcl-ds T972 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T972 FROM T972 LIMIT 1;

theCharVar = 'Hello from P1369';
dsply theCharVar;
P719();
P84();
P1218();
return;