**free

ctl-opt dftactgrp(*no);

dcl-pi P11;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P10.rpgleinc'

dcl-ds T1735 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1735 FROM T1735 LIMIT 1;

theCharVar = 'Hello from P11';
dsply theCharVar;
callp localProc();
P8();
P10();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P11 in the procedure';
end-proc;