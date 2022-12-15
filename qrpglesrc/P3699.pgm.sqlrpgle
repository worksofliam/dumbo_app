**free

ctl-opt dftactgrp(*no);

dcl-pi P3699;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1145.rpgleinc'
/copy 'qrpgleref/P2050.rpgleinc'
/copy 'qrpgleref/P2313.rpgleinc'

dcl-ds theTable extname('T402') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T402 LIMIT 1;

theCharVar = 'Hello from P3699';
dsply theCharVar;
callp localProc();
P1145();
P2050();
P2313();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3699 in the procedure';
end-proc;