**free

ctl-opt dftactgrp(*no);

dcl-pi P3137;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P661.rpgleinc'
/copy 'qrpgleref/P2748.rpgleinc'
/copy 'qrpgleref/P1260.rpgleinc'

dcl-ds theTable extname('T1072') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1072 LIMIT 1;

theCharVar = 'Hello from P3137';
dsply theCharVar;
callp localProc();
P661();
P2748();
P1260();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3137 in the procedure';
end-proc;