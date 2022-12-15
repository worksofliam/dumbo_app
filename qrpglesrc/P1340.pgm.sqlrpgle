**free

ctl-opt dftactgrp(*no);

dcl-pi P1340;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P758.rpgleinc'
/copy 'qrpgleref/P1039.rpgleinc'
/copy 'qrpgleref/P64.rpgleinc'

dcl-ds T842 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T842 FROM T842 LIMIT 1;

theCharVar = 'Hello from P1340';
dsply theCharVar;
P758();
P1039();
P64();
return;