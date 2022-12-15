**free

ctl-opt dftactgrp(*no);

dcl-pi P4092;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P255.rpgleinc'
/copy 'qrpgleref/P774.rpgleinc'
/copy 'qrpgleref/P3799.rpgleinc'

dcl-ds T620 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T620 FROM T620 LIMIT 1;

theCharVar = 'Hello from P4092';
dsply theCharVar;
callp localProc();
P255();
P774();
P3799();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4092 in the procedure';
end-proc;