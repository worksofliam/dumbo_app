**free

ctl-opt dftactgrp(*no);

dcl-pi P1899;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P228.rpgleinc'
/copy 'qrpgleref/P289.rpgleinc'
/copy 'qrpgleref/P1069.rpgleinc'

dcl-ds T509 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T509 FROM T509 LIMIT 1;

theCharVar = 'Hello from P1899';
dsply theCharVar;
P228();
P289();
P1069();
return;