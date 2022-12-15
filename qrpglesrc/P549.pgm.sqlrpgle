**free

ctl-opt dftactgrp(*no);

dcl-pi P549;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P11.rpgleinc'
/copy 'qrpgleref/P141.rpgleinc'
/copy 'qrpgleref/P460.rpgleinc'

dcl-ds T1404 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1404 FROM T1404 LIMIT 1;

theCharVar = 'Hello from P549';
dsply theCharVar;
callp localProc();
P11();
P141();
P460();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P549 in the procedure';
end-proc;