**free

ctl-opt dftactgrp(*no);

dcl-pi P670;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P88.rpgleinc'
/copy 'qrpgleref/P278.rpgleinc'
/copy 'qrpgleref/P255.rpgleinc'

dcl-ds T1193 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1193 FROM T1193 LIMIT 1;

theCharVar = 'Hello from P670';
dsply theCharVar;
callp localProc();
P88();
P278();
P255();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P670 in the procedure';
end-proc;