**free

ctl-opt dftactgrp(*no);

dcl-pi P4316;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2366.rpgleinc'
/copy 'qrpgleref/P69.rpgleinc'
/copy 'qrpgleref/P2363.rpgleinc'

dcl-ds T1754 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1754 FROM T1754 LIMIT 1;

theCharVar = 'Hello from P4316';
dsply theCharVar;
P2366();
P69();
P2363();
return;