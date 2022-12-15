**free

ctl-opt dftactgrp(*no);

dcl-pi P403;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P134.rpgleinc'
/copy 'qrpgleref/P185.rpgleinc'
/copy 'qrpgleref/P323.rpgleinc'

dcl-ds T1420 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1420 FROM T1420 LIMIT 1;

theCharVar = 'Hello from P403';
dsply theCharVar;
callp localProc();
P134();
P185();
P323();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P403 in the procedure';
end-proc;