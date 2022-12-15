**free

ctl-opt dftactgrp(*no);

dcl-pi P1178;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P488.rpgleinc'
/copy 'qrpgleref/P803.rpgleinc'
/copy 'qrpgleref/P853.rpgleinc'

dcl-ds T569 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T569 FROM T569 LIMIT 1;

theCharVar = 'Hello from P1178';
dsply theCharVar;
callp localProc();
P488();
P803();
P853();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1178 in the procedure';
end-proc;