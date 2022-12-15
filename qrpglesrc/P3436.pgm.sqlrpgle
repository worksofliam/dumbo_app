**free

ctl-opt dftactgrp(*no);

dcl-pi P3436;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P315.rpgleinc'
/copy 'qrpgleref/P1659.rpgleinc'
/copy 'qrpgleref/P514.rpgleinc'

dcl-ds T1085 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1085 FROM T1085 LIMIT 1;

theCharVar = 'Hello from P3436';
dsply theCharVar;
callp localProc();
P315();
P1659();
P514();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3436 in the procedure';
end-proc;