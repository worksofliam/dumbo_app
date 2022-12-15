**free

ctl-opt dftactgrp(*no);

dcl-pi P1069;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P266.rpgleinc'
/copy 'qrpgleref/P406.rpgleinc'
/copy 'qrpgleref/P196.rpgleinc'

dcl-ds T133 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T133 FROM T133 LIMIT 1;

theCharVar = 'Hello from P1069';
dsply theCharVar;
P266();
P406();
P196();
return;