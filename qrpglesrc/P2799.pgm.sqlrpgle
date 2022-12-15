**free

ctl-opt dftactgrp(*no);

dcl-pi P2799;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P564.rpgleinc'
/copy 'qrpgleref/P1819.rpgleinc'
/copy 'qrpgleref/P2665.rpgleinc'

dcl-ds T423 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T423 FROM T423 LIMIT 1;

theCharVar = 'Hello from P2799';
dsply theCharVar;
P564();
P1819();
P2665();
return;