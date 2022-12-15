**free

ctl-opt dftactgrp(*no);

dcl-pi P2745;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1255.rpgleinc'
/copy 'qrpgleref/P951.rpgleinc'
/copy 'qrpgleref/P2492.rpgleinc'

dcl-ds theTable extname('T250') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T250 LIMIT 1;

theCharVar = 'Hello from P2745';
dsply theCharVar;
callp localProc();
P1255();
P951();
P2492();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2745 in the procedure';
end-proc;