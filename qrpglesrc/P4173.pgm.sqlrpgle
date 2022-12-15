**free

ctl-opt dftactgrp(*no);

dcl-pi P4173;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3504.rpgleinc'
/copy 'qrpgleref/P1847.rpgleinc'
/copy 'qrpgleref/P2505.rpgleinc'

dcl-ds T478 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T478 FROM T478 LIMIT 1;

theCharVar = 'Hello from P4173';
dsply theCharVar;
callp localProc();
P3504();
P1847();
P2505();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4173 in the procedure';
end-proc;