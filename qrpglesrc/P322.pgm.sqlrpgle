**free

ctl-opt dftactgrp(*no);

dcl-pi P322;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P165.rpgleinc'
/copy 'qrpgleref/P36.rpgleinc'
/copy 'qrpgleref/P116.rpgleinc'

dcl-ds theTable extname('T0') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T0 LIMIT 1;

theCharVar = 'Hello from P322';
dsply theCharVar;
callp localProc();
P165();
P36();
P116();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P322 in the procedure';
end-proc;