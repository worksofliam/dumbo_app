**free

ctl-opt dftactgrp(*no);

dcl-pi P5255;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5055.rpgleinc'
/copy 'qrpgleref/P3261.rpgleinc'
/copy 'qrpgleref/P1874.rpgleinc'

dcl-ds T1672 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1672 FROM T1672 LIMIT 1;

theCharVar = 'Hello from P5255';
dsply theCharVar;
callp localProc();
P5055();
P3261();
P1874();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5255 in the procedure';
end-proc;