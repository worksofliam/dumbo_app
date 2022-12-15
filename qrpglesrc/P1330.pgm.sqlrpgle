**free

ctl-opt dftactgrp(*no);

dcl-pi P1330;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P527.rpgleinc'
/copy 'qrpgleref/P482.rpgleinc'
/copy 'qrpgleref/P852.rpgleinc'

dcl-ds T1270 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1270 FROM T1270 LIMIT 1;

theCharVar = 'Hello from P1330';
dsply theCharVar;
callp localProc();
P527();
P482();
P852();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1330 in the procedure';
end-proc;