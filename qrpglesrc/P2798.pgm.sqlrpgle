**free

ctl-opt dftactgrp(*no);

dcl-pi P2798;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2530.rpgleinc'
/copy 'qrpgleref/P2152.rpgleinc'
/copy 'qrpgleref/P1249.rpgleinc'

dcl-ds T391 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T391 FROM T391 LIMIT 1;

theCharVar = 'Hello from P2798';
dsply theCharVar;
P2530();
P2152();
P1249();
return;