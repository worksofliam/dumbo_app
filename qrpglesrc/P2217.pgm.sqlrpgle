**free

ctl-opt dftactgrp(*no);

dcl-pi P2217;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P534.rpgleinc'
/copy 'qrpgleref/P65.rpgleinc'
/copy 'qrpgleref/P1942.rpgleinc'

dcl-ds theTable extname('T849') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T849 LIMIT 1;

theCharVar = 'Hello from P2217';
dsply theCharVar;
callp localProc();
P534();
P65();
P1942();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2217 in the procedure';
end-proc;