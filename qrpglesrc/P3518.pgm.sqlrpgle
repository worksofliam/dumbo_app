**free

ctl-opt dftactgrp(*no);

dcl-pi P3518;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1296.rpgleinc'
/copy 'qrpgleref/P3407.rpgleinc'
/copy 'qrpgleref/P1650.rpgleinc'

dcl-ds T602 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T602 FROM T602 LIMIT 1;

theCharVar = 'Hello from P3518';
dsply theCharVar;
callp localProc();
P1296();
P3407();
P1650();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3518 in the procedure';
end-proc;