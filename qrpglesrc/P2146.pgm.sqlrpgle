**free

ctl-opt dftactgrp(*no);

dcl-pi P2146;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P532.rpgleinc'
/copy 'qrpgleref/P1655.rpgleinc'
/copy 'qrpgleref/P1308.rpgleinc'

dcl-ds T889 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T889 FROM T889 LIMIT 1;

theCharVar = 'Hello from P2146';
dsply theCharVar;
P532();
P1655();
P1308();
return;