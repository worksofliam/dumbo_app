**free

ctl-opt dftactgrp(*no);

dcl-pi P5176;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P277.rpgleinc'
/copy 'qrpgleref/P4877.rpgleinc'
/copy 'qrpgleref/P1781.rpgleinc'

dcl-ds T1483 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1483 FROM T1483 LIMIT 1;

theCharVar = 'Hello from P5176';
dsply theCharVar;
callp localProc();
P277();
P4877();
P1781();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5176 in the procedure';
end-proc;