**free

ctl-opt dftactgrp(*no);

dcl-pi P4145;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4003.rpgleinc'
/copy 'qrpgleref/P1058.rpgleinc'
/copy 'qrpgleref/P4026.rpgleinc'

dcl-ds T875 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T875 FROM T875 LIMIT 1;

theCharVar = 'Hello from P4145';
dsply theCharVar;
callp localProc();
P4003();
P1058();
P4026();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4145 in the procedure';
end-proc;