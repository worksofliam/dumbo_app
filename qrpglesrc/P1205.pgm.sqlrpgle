**free

ctl-opt dftactgrp(*no);

dcl-pi P1205;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P248.rpgleinc'
/copy 'qrpgleref/P1201.rpgleinc'
/copy 'qrpgleref/P707.rpgleinc'

dcl-ds T637 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T637 FROM T637 LIMIT 1;

theCharVar = 'Hello from P1205';
dsply theCharVar;
callp localProc();
P248();
P1201();
P707();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1205 in the procedure';
end-proc;