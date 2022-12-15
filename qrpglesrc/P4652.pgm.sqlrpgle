**free

ctl-opt dftactgrp(*no);

dcl-pi P4652;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2214.rpgleinc'
/copy 'qrpgleref/P1222.rpgleinc'
/copy 'qrpgleref/P201.rpgleinc'

dcl-ds theTable extname('T338') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T338 LIMIT 1;

theCharVar = 'Hello from P4652';
dsply theCharVar;
callp localProc();
P2214();
P1222();
P201();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4652 in the procedure';
end-proc;