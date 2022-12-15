**free

ctl-opt dftactgrp(*no);

dcl-pi P4279;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4185.rpgleinc'
/copy 'qrpgleref/P3379.rpgleinc'
/copy 'qrpgleref/P2921.rpgleinc'

dcl-ds T1648 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1648 FROM T1648 LIMIT 1;

theCharVar = 'Hello from P4279';
dsply theCharVar;
callp localProc();
P4185();
P3379();
P2921();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4279 in the procedure';
end-proc;