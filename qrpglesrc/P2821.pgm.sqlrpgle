**free

ctl-opt dftactgrp(*no);

dcl-pi P2821;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2517.rpgleinc'
/copy 'qrpgleref/P366.rpgleinc'
/copy 'qrpgleref/P2153.rpgleinc'

dcl-ds T380 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T380 FROM T380 LIMIT 1;

theCharVar = 'Hello from P2821';
dsply theCharVar;
P2517();
P366();
P2153();
return;