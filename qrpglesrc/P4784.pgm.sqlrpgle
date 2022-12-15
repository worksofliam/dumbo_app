**free

ctl-opt dftactgrp(*no);

dcl-pi P4784;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2940.rpgleinc'
/copy 'qrpgleref/P4732.rpgleinc'
/copy 'qrpgleref/P570.rpgleinc'

dcl-ds T300 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T300 FROM T300 LIMIT 1;

theCharVar = 'Hello from P4784';
dsply theCharVar;
callp localProc();
P2940();
P4732();
P570();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4784 in the procedure';
end-proc;