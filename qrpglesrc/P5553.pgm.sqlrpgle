**free

ctl-opt dftactgrp(*no);

dcl-pi P5553;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3905.rpgleinc'
/copy 'qrpgleref/P4873.rpgleinc'
/copy 'qrpgleref/P5096.rpgleinc'

dcl-ds T1524 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1524 FROM T1524 LIMIT 1;

theCharVar = 'Hello from P5553';
dsply theCharVar;
callp localProc();
P3905();
P4873();
P5096();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5553 in the procedure';
end-proc;