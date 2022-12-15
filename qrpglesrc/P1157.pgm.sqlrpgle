**free

ctl-opt dftactgrp(*no);

dcl-pi P1157;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P805.rpgleinc'
/copy 'qrpgleref/P491.rpgleinc'
/copy 'qrpgleref/P1152.rpgleinc'

dcl-ds T677 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T677 FROM T677 LIMIT 1;

theCharVar = 'Hello from P1157';
dsply theCharVar;
callp localProc();
P805();
P491();
P1152();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1157 in the procedure';
end-proc;