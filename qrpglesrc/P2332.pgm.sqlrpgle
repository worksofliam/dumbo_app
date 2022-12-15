**free

ctl-opt dftactgrp(*no);

dcl-pi P2332;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1216.rpgleinc'
/copy 'qrpgleref/P1214.rpgleinc'
/copy 'qrpgleref/P1588.rpgleinc'

dcl-ds T1352 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1352 FROM T1352 LIMIT 1;

theCharVar = 'Hello from P2332';
dsply theCharVar;
P1216();
P1214();
P1588();
return;