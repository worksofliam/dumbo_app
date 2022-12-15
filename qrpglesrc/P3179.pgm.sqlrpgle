**free

ctl-opt dftactgrp(*no);

dcl-pi P3179;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2017.rpgleinc'
/copy 'qrpgleref/P391.rpgleinc'
/copy 'qrpgleref/P981.rpgleinc'

dcl-ds T743 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T743 FROM T743 LIMIT 1;

theCharVar = 'Hello from P3179';
dsply theCharVar;
callp localProc();
P2017();
P391();
P981();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3179 in the procedure';
end-proc;