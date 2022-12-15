**free

ctl-opt dftactgrp(*no);

dcl-pi P5624;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3497.rpgleinc'
/copy 'qrpgleref/P2950.rpgleinc'
/copy 'qrpgleref/P162.rpgleinc'

dcl-ds T1463 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1463 FROM T1463 LIMIT 1;

theCharVar = 'Hello from P5624';
dsply theCharVar;
callp localProc();
P3497();
P2950();
P162();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5624 in the procedure';
end-proc;