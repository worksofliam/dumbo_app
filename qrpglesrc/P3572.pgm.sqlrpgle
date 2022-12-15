**free

ctl-opt dftactgrp(*no);

dcl-pi P3572;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P98.rpgleinc'
/copy 'qrpgleref/P2984.rpgleinc'
/copy 'qrpgleref/P1855.rpgleinc'

dcl-ds T53 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T53 FROM T53 LIMIT 1;

theCharVar = 'Hello from P3572';
dsply theCharVar;
callp localProc();
P98();
P2984();
P1855();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3572 in the procedure';
end-proc;