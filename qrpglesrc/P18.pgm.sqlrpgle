**free

ctl-opt dftactgrp(*no);

dcl-pi P18;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P10.rpgleinc'
/copy 'qrpgleref/P9.rpgleinc'

dcl-ds T23 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T23 FROM T23 LIMIT 1;

theCharVar = 'Hello from P18';
dsply theCharVar;
callp localProc();
P14();
P10();
P9();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P18 in the procedure';
end-proc;