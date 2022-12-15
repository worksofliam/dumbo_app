**free

ctl-opt dftactgrp(*no);

dcl-pi P3853;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2469.rpgleinc'
/copy 'qrpgleref/P1797.rpgleinc'
/copy 'qrpgleref/P1440.rpgleinc'

dcl-ds T1108 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1108 FROM T1108 LIMIT 1;

theCharVar = 'Hello from P3853';
dsply theCharVar;
callp localProc();
P2469();
P1797();
P1440();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3853 in the procedure';
end-proc;