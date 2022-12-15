**free

ctl-opt dftactgrp(*no);

dcl-pi P5343;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P763.rpgleinc'
/copy 'qrpgleref/P1260.rpgleinc'
/copy 'qrpgleref/P1558.rpgleinc'

dcl-ds T1026 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1026 FROM T1026 LIMIT 1;

theCharVar = 'Hello from P5343';
dsply theCharVar;
callp localProc();
P763();
P1260();
P1558();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5343 in the procedure';
end-proc;