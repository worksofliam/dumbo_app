**free

ctl-opt dftactgrp(*no);

dcl-pi P4499;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2470.rpgleinc'
/copy 'qrpgleref/P2916.rpgleinc'
/copy 'qrpgleref/P2983.rpgleinc'

dcl-ds T77 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T77 FROM T77 LIMIT 1;

theCharVar = 'Hello from P4499';
dsply theCharVar;
P2470();
P2916();
P2983();
return;