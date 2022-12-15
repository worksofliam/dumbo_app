**free

ctl-opt dftactgrp(*no);

dcl-pi P5481;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5450.rpgleinc'
/copy 'qrpgleref/P3748.rpgleinc'
/copy 'qrpgleref/P2468.rpgleinc'

dcl-ds T195 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T195 FROM T195 LIMIT 1;

theCharVar = 'Hello from P5481';
dsply theCharVar;
callp localProc();
P5450();
P3748();
P2468();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5481 in the procedure';
end-proc;