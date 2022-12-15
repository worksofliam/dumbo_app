**free

ctl-opt dftactgrp(*no);

dcl-pi P4651;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2967.rpgleinc'
/copy 'qrpgleref/P3372.rpgleinc'
/copy 'qrpgleref/P4623.rpgleinc'

dcl-ds T1296 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1296 FROM T1296 LIMIT 1;

theCharVar = 'Hello from P4651';
dsply theCharVar;
callp localProc();
P2967();
P3372();
P4623();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4651 in the procedure';
end-proc;