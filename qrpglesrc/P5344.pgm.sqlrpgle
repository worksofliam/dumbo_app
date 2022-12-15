**free

ctl-opt dftactgrp(*no);

dcl-pi P5344;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4341.rpgleinc'
/copy 'qrpgleref/P2059.rpgleinc'
/copy 'qrpgleref/P2323.rpgleinc'

dcl-ds theTable extname('T1048') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1048 LIMIT 1;

theCharVar = 'Hello from P5344';
dsply theCharVar;
callp localProc();
P4341();
P2059();
P2323();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5344 in the procedure';
end-proc;