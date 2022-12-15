**free

ctl-opt dftactgrp(*no);

dcl-pi P4461;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3643.rpgleinc'
/copy 'qrpgleref/P2351.rpgleinc'
/copy 'qrpgleref/P4224.rpgleinc'

dcl-ds theTable extname('T1823') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1823 LIMIT 1;

theCharVar = 'Hello from P4461';
dsply theCharVar;
callp localProc();
P3643();
P2351();
P4224();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4461 in the procedure';
end-proc;