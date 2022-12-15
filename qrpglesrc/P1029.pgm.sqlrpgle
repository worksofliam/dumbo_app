**free

ctl-opt dftactgrp(*no);

dcl-pi P1029;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P938.rpgleinc'
/copy 'qrpgleref/P773.rpgleinc'
/copy 'qrpgleref/P152.rpgleinc'

dcl-ds T1826 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1826 FROM T1826 LIMIT 1;

theCharVar = 'Hello from P1029';
dsply theCharVar;
callp localProc();
P938();
P773();
P152();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1029 in the procedure';
end-proc;