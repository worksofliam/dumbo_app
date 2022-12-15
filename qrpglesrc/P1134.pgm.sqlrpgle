**free

ctl-opt dftactgrp(*no);

dcl-pi P1134;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P936.rpgleinc'
/copy 'qrpgleref/P651.rpgleinc'
/copy 'qrpgleref/P51.rpgleinc'

dcl-ds T162 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T162 FROM T162 LIMIT 1;

theCharVar = 'Hello from P1134';
dsply theCharVar;
callp localProc();
P936();
P651();
P51();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1134 in the procedure';
end-proc;