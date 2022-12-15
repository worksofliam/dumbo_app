**free

ctl-opt dftactgrp(*no);

dcl-pi P4572;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2754.rpgleinc'
/copy 'qrpgleref/P2453.rpgleinc'
/copy 'qrpgleref/P4174.rpgleinc'

dcl-ds theTable extname('T520') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T520 LIMIT 1;

theCharVar = 'Hello from P4572';
dsply theCharVar;
callp localProc();
P2754();
P2453();
P4174();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4572 in the procedure';
end-proc;