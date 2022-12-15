**free

ctl-opt dftactgrp(*no);

dcl-pi P3910;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1221.rpgleinc'
/copy 'qrpgleref/P3442.rpgleinc'
/copy 'qrpgleref/P2361.rpgleinc'

dcl-ds T435 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T435 FROM T435 LIMIT 1;

theCharVar = 'Hello from P3910';
dsply theCharVar;
callp localProc();
P1221();
P3442();
P2361();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3910 in the procedure';
end-proc;