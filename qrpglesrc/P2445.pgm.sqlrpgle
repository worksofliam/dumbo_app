**free

ctl-opt dftactgrp(*no);

dcl-pi P2445;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1177.rpgleinc'
/copy 'qrpgleref/P1475.rpgleinc'
/copy 'qrpgleref/P2083.rpgleinc'

dcl-ds T1026 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1026 FROM T1026 LIMIT 1;

theCharVar = 'Hello from P2445';
dsply theCharVar;
P1177();
P1475();
P2083();
return;