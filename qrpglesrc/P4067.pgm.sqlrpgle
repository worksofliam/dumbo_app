**free

ctl-opt dftactgrp(*no);

dcl-pi P4067;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1427.rpgleinc'
/copy 'qrpgleref/P4059.rpgleinc'
/copy 'qrpgleref/P1255.rpgleinc'

dcl-ds T1099 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1099 FROM T1099 LIMIT 1;

theCharVar = 'Hello from P4067';
dsply theCharVar;
callp localProc();
P1427();
P4059();
P1255();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4067 in the procedure';
end-proc;