**free

ctl-opt dftactgrp(*no);

dcl-pi P4267;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P305.rpgleinc'
/copy 'qrpgleref/P3202.rpgleinc'
/copy 'qrpgleref/P1576.rpgleinc'

dcl-ds T1682 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1682 FROM T1682 LIMIT 1;

theCharVar = 'Hello from P4267';
dsply theCharVar;
callp localProc();
P305();
P3202();
P1576();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4267 in the procedure';
end-proc;