**free

ctl-opt dftactgrp(*no);

dcl-pi P5592;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P732.rpgleinc'
/copy 'qrpgleref/P216.rpgleinc'
/copy 'qrpgleref/P4246.rpgleinc'

dcl-ds T1520 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1520 FROM T1520 LIMIT 1;

theCharVar = 'Hello from P5592';
dsply theCharVar;
callp localProc();
P732();
P216();
P4246();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5592 in the procedure';
end-proc;