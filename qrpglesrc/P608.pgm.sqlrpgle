**free

ctl-opt dftactgrp(*no);

dcl-pi P608;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P22.rpgleinc'
/copy 'qrpgleref/P361.rpgleinc'
/copy 'qrpgleref/P489.rpgleinc'

dcl-ds T66 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T66 FROM T66 LIMIT 1;

theCharVar = 'Hello from P608';
dsply theCharVar;
callp localProc();
P22();
P361();
P489();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P608 in the procedure';
end-proc;