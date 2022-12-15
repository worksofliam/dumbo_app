**free

ctl-opt dftactgrp(*no);

dcl-pi P3732;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2588.rpgleinc'
/copy 'qrpgleref/P331.rpgleinc'
/copy 'qrpgleref/P1944.rpgleinc'

dcl-ds T655 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T655 FROM T655 LIMIT 1;

theCharVar = 'Hello from P3732';
dsply theCharVar;
callp localProc();
P2588();
P331();
P1944();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3732 in the procedure';
end-proc;