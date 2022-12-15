**free

ctl-opt dftactgrp(*no);

dcl-pi P3493;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P439.rpgleinc'
/copy 'qrpgleref/P495.rpgleinc'
/copy 'qrpgleref/P2477.rpgleinc'

dcl-ds T659 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T659 FROM T659 LIMIT 1;

theCharVar = 'Hello from P3493';
dsply theCharVar;
P439();
P495();
P2477();
return;