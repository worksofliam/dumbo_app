**free

ctl-opt dftactgrp(*no);

dcl-pi P2544;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2149.rpgleinc'
/copy 'qrpgleref/P922.rpgleinc'
/copy 'qrpgleref/P2373.rpgleinc'

dcl-ds T282 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T282 FROM T282 LIMIT 1;

theCharVar = 'Hello from P2544';
dsply theCharVar;
P2149();
P922();
P2373();
return;