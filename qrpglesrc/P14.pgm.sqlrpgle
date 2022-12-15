**free

ctl-opt dftactgrp(*no);

dcl-pi P14;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P11.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P8.rpgleinc'

dcl-ds T1125 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1125 FROM T1125 LIMIT 1;

theCharVar = 'Hello from P14';
dsply theCharVar;
callp localProc();
P11();
P6();
P8();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P14 in the procedure';
end-proc;