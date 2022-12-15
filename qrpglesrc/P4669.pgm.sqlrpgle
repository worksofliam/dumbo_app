**free

ctl-opt dftactgrp(*no);

dcl-pi P4669;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3387.rpgleinc'
/copy 'qrpgleref/P1709.rpgleinc'
/copy 'qrpgleref/P3716.rpgleinc'

dcl-ds T1603 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1603 FROM T1603 LIMIT 1;

theCharVar = 'Hello from P4669';
dsply theCharVar;
callp localProc();
P3387();
P1709();
P3716();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4669 in the procedure';
end-proc;