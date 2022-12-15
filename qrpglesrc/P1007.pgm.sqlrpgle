**free

ctl-opt dftactgrp(*no);

dcl-pi P1007;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P653.rpgleinc'
/copy 'qrpgleref/P784.rpgleinc'
/copy 'qrpgleref/P221.rpgleinc'

dcl-ds T516 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T516 FROM T516 LIMIT 1;

theCharVar = 'Hello from P1007';
dsply theCharVar;
P653();
P784();
P221();
return;