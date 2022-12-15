**free

ctl-opt dftactgrp(*no);

dcl-pi P2254;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P840.rpgleinc'
/copy 'qrpgleref/P378.rpgleinc'
/copy 'qrpgleref/P2095.rpgleinc'

dcl-ds theTable extname('T70') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T70 LIMIT 1;

theCharVar = 'Hello from P2254';
dsply theCharVar;
callp localProc();
P840();
P378();
P2095();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2254 in the procedure';
end-proc;