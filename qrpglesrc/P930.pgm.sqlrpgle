**free

ctl-opt dftactgrp(*no);

dcl-pi P930;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P481.rpgleinc'
/copy 'qrpgleref/P799.rpgleinc'
/copy 'qrpgleref/P571.rpgleinc'

dcl-ds T1628 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1628 FROM T1628 LIMIT 1;

theCharVar = 'Hello from P930';
dsply theCharVar;
callp localProc();
P481();
P799();
P571();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P930 in the procedure';
end-proc;