**free

ctl-opt dftactgrp(*no);

dcl-pi P2939;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1901.rpgleinc'
/copy 'qrpgleref/P1146.rpgleinc'
/copy 'qrpgleref/P26.rpgleinc'

dcl-ds T766 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T766 FROM T766 LIMIT 1;

theCharVar = 'Hello from P2939';
dsply theCharVar;
callp localProc();
P1901();
P1146();
P26();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2939 in the procedure';
end-proc;