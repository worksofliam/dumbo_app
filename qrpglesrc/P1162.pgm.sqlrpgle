**free

ctl-opt dftactgrp(*no);

dcl-pi P1162;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P237.rpgleinc'
/copy 'qrpgleref/P83.rpgleinc'
/copy 'qrpgleref/P1122.rpgleinc'

dcl-ds T346 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T346 FROM T346 LIMIT 1;

theCharVar = 'Hello from P1162';
dsply theCharVar;
callp localProc();
P237();
P83();
P1122();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1162 in the procedure';
end-proc;