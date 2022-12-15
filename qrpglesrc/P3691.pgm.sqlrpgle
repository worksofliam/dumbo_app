**free

ctl-opt dftactgrp(*no);

dcl-pi P3691;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P108.rpgleinc'
/copy 'qrpgleref/P2313.rpgleinc'
/copy 'qrpgleref/P2429.rpgleinc'

dcl-ds T502 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T502 FROM T502 LIMIT 1;

theCharVar = 'Hello from P3691';
dsply theCharVar;
callp localProc();
P108();
P2313();
P2429();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3691 in the procedure';
end-proc;