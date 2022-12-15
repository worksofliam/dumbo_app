**free

ctl-opt dftactgrp(*no);

dcl-pi P4162;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3661.rpgleinc'
/copy 'qrpgleref/P2787.rpgleinc'
/copy 'qrpgleref/P1784.rpgleinc'

dcl-ds T1794 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1794 FROM T1794 LIMIT 1;

theCharVar = 'Hello from P4162';
dsply theCharVar;
callp localProc();
P3661();
P2787();
P1784();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4162 in the procedure';
end-proc;