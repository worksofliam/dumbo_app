**free

ctl-opt dftactgrp(*no);

dcl-pi P1098;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P164.rpgleinc'
/copy 'qrpgleref/P436.rpgleinc'
/copy 'qrpgleref/P654.rpgleinc'

dcl-ds T1739 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1739 FROM T1739 LIMIT 1;

theCharVar = 'Hello from P1098';
dsply theCharVar;
callp localProc();
P164();
P436();
P654();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1098 in the procedure';
end-proc;