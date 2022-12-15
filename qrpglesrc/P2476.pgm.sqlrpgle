**free

ctl-opt dftactgrp(*no);

dcl-pi P2476;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1703.rpgleinc'
/copy 'qrpgleref/P2244.rpgleinc'
/copy 'qrpgleref/P2345.rpgleinc'

dcl-ds T1730 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1730 FROM T1730 LIMIT 1;

theCharVar = 'Hello from P2476';
dsply theCharVar;
P1703();
P2244();
P2345();
return;