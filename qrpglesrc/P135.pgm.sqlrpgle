**free

ctl-opt dftactgrp(*no);

dcl-pi P135;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P44.rpgleinc'
/copy 'qrpgleref/P74.rpgleinc'

dcl-ds T459 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T459 FROM T459 LIMIT 1;

theCharVar = 'Hello from P135';
dsply theCharVar;
callp localProc();
P14();
P44();
P74();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P135 in the procedure';
end-proc;