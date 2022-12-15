**free

ctl-opt dftactgrp(*no);

dcl-pi P1122;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P568.rpgleinc'
/copy 'qrpgleref/P89.rpgleinc'

dcl-ds T992 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T992 FROM T992 LIMIT 1;

theCharVar = 'Hello from P1122';
dsply theCharVar;
callp localProc();
P6();
P568();
P89();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1122 in the procedure';
end-proc;