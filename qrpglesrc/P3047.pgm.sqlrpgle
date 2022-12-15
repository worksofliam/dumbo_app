**free

ctl-opt dftactgrp(*no);

dcl-pi P3047;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3034.rpgleinc'
/copy 'qrpgleref/P2257.rpgleinc'
/copy 'qrpgleref/P286.rpgleinc'

dcl-ds T1458 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1458 FROM T1458 LIMIT 1;

theCharVar = 'Hello from P3047';
dsply theCharVar;
callp localProc();
P3034();
P2257();
P286();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3047 in the procedure';
end-proc;