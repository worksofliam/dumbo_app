**free

ctl-opt dftactgrp(*no);

dcl-pi P1899;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P996.rpgleinc'
/copy 'qrpgleref/P83.rpgleinc'
/copy 'qrpgleref/P698.rpgleinc'

dcl-ds T1644 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1644 FROM T1644 LIMIT 1;

theCharVar = 'Hello from P1899';
dsply theCharVar;
callp localProc();
P996();
P83();
P698();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1899 in the procedure';
end-proc;