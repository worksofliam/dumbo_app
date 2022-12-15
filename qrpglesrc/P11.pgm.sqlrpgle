**free

ctl-opt dftactgrp(*no);

dcl-pi P11;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P7.rpgleinc'
/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'

dcl-ds T93 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T93 FROM T93 LIMIT 1;

theCharVar = 'Hello from P11';
dsply theCharVar;
callp localProc();
P7();
P8();
P0();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P11 in the procedure';
end-proc;