**free

ctl-opt dftactgrp(*no);

dcl-pi P1373;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P656.rpgleinc'
/copy 'qrpgleref/P1216.rpgleinc'
/copy 'qrpgleref/P573.rpgleinc'

dcl-ds theTable extname('T211') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T211 LIMIT 1;

theCharVar = 'Hello from P1373';
dsply theCharVar;
callp localProc();
P656();
P1216();
P573();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1373 in the procedure';
end-proc;