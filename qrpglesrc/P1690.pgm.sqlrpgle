**free

ctl-opt dftactgrp(*no);

dcl-pi P1690;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1246.rpgleinc'
/copy 'qrpgleref/P923.rpgleinc'
/copy 'qrpgleref/P186.rpgleinc'

dcl-ds T1165 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1165 FROM T1165 LIMIT 1;

theCharVar = 'Hello from P1690';
dsply theCharVar;
callp localProc();
P1246();
P923();
P186();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1690 in the procedure';
end-proc;