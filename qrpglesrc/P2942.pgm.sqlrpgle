**free

ctl-opt dftactgrp(*no);

dcl-pi P2942;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2027.rpgleinc'
/copy 'qrpgleref/P2234.rpgleinc'
/copy 'qrpgleref/P345.rpgleinc'

dcl-ds theTable extname('T1127') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1127 LIMIT 1;

theCharVar = 'Hello from P2942';
dsply theCharVar;
callp localProc();
P2027();
P2234();
P345();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2942 in the procedure';
end-proc;