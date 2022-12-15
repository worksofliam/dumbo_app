**free

ctl-opt dftactgrp(*no);

dcl-pi P5400;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2859.rpgleinc'
/copy 'qrpgleref/P2839.rpgleinc'
/copy 'qrpgleref/P1239.rpgleinc'

dcl-ds theTable extname('T263') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T263 LIMIT 1;

theCharVar = 'Hello from P5400';
dsply theCharVar;
callp localProc();
P2859();
P2839();
P1239();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5400 in the procedure';
end-proc;