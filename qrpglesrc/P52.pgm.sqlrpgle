**free

ctl-opt dftactgrp(*no);

dcl-pi P52;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P26.rpgleinc'
/copy 'qrpgleref/P22.rpgleinc'
/copy 'qrpgleref/P24.rpgleinc'

dcl-ds T428 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T428 FROM T428 LIMIT 1;

theCharVar = 'Hello from P52';
dsply theCharVar;
callp localProc();
P26();
P22();
P24();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P52 in the procedure';
end-proc;