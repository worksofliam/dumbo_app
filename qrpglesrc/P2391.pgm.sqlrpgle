**free

ctl-opt dftactgrp(*no);

dcl-pi P2391;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P406.rpgleinc'
/copy 'qrpgleref/P1089.rpgleinc'
/copy 'qrpgleref/P1376.rpgleinc'

dcl-ds T753 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T753 FROM T753 LIMIT 1;

theCharVar = 'Hello from P2391';
dsply theCharVar;
P406();
P1089();
P1376();
return;