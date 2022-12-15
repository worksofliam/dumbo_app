**free

ctl-opt dftactgrp(*no);

dcl-pi P157;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P108.rpgleinc'
/copy 'qrpgleref/P98.rpgleinc'
/copy 'qrpgleref/P58.rpgleinc'

dcl-ds T104 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T104 FROM T104 LIMIT 1;

theCharVar = 'Hello from P157';
dsply theCharVar;
callp localProc();
P108();
P98();
P58();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P157 in the procedure';
end-proc;