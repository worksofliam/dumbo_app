**free

ctl-opt dftactgrp(*no);

dcl-pi P1240;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P981.rpgleinc'
/copy 'qrpgleref/P598.rpgleinc'
/copy 'qrpgleref/P1077.rpgleinc'

dcl-ds T67 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T67 FROM T67 LIMIT 1;

theCharVar = 'Hello from P1240';
dsply theCharVar;
callp localProc();
P981();
P598();
P1077();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1240 in the procedure';
end-proc;