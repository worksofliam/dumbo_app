**free

ctl-opt dftactgrp(*no);

dcl-pi P3263;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1030.rpgleinc'
/copy 'qrpgleref/P1506.rpgleinc'
/copy 'qrpgleref/P177.rpgleinc'

dcl-ds T1231 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1231 FROM T1231 LIMIT 1;

theCharVar = 'Hello from P3263';
dsply theCharVar;
callp localProc();
P1030();
P1506();
P177();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3263 in the procedure';
end-proc;