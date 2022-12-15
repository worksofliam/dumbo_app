**free

ctl-opt dftactgrp(*no);

dcl-pi P4015;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P793.rpgleinc'
/copy 'qrpgleref/P71.rpgleinc'
/copy 'qrpgleref/P1208.rpgleinc'

dcl-ds T86 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T86 FROM T86 LIMIT 1;

theCharVar = 'Hello from P4015';
dsply theCharVar;
callp localProc();
P793();
P71();
P1208();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4015 in the procedure';
end-proc;