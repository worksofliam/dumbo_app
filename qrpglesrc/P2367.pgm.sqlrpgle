**free

ctl-opt dftactgrp(*no);

dcl-pi P2367;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P885.rpgleinc'
/copy 'qrpgleref/P1732.rpgleinc'
/copy 'qrpgleref/P833.rpgleinc'

dcl-ds T1226 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1226 FROM T1226 LIMIT 1;

theCharVar = 'Hello from P2367';
dsply theCharVar;
P885();
P1732();
P833();
return;