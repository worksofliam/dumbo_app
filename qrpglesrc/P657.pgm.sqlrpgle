**free

ctl-opt dftactgrp(*no);

dcl-pi P657;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P155.rpgleinc'
/copy 'qrpgleref/P353.rpgleinc'
/copy 'qrpgleref/P430.rpgleinc'

dcl-ds T1442 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1442 FROM T1442 LIMIT 1;

theCharVar = 'Hello from P657';
dsply theCharVar;
callp localProc();
P155();
P353();
P430();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P657 in the procedure';
end-proc;