**free

ctl-opt dftactgrp(*no);

dcl-pi P4307;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P213.rpgleinc'
/copy 'qrpgleref/P3853.rpgleinc'
/copy 'qrpgleref/P3021.rpgleinc'

dcl-ds T1460 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1460 FROM T1460 LIMIT 1;

theCharVar = 'Hello from P4307';
dsply theCharVar;
callp localProc();
P213();
P3853();
P3021();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4307 in the procedure';
end-proc;