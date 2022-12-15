**free

ctl-opt dftactgrp(*no);

dcl-pi P4911;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1134.rpgleinc'
/copy 'qrpgleref/P3639.rpgleinc'
/copy 'qrpgleref/P4608.rpgleinc'

dcl-ds T859 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T859 FROM T859 LIMIT 1;

theCharVar = 'Hello from P4911';
dsply theCharVar;
callp localProc();
P1134();
P3639();
P4608();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4911 in the procedure';
end-proc;