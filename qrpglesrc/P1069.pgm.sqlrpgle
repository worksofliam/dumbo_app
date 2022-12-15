**free

ctl-opt dftactgrp(*no);

dcl-pi P1069;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P364.rpgleinc'
/copy 'qrpgleref/P640.rpgleinc'
/copy 'qrpgleref/P147.rpgleinc'

dcl-ds T1620 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1620 FROM T1620 LIMIT 1;

theCharVar = 'Hello from P1069';
dsply theCharVar;
P364();
P640();
P147();
return;