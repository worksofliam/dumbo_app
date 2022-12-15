**free

ctl-opt dftactgrp(*no);

dcl-pi P19;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P0.rpgleinc'
/copy 'qrpgleref/P5.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'

dcl-ds theTable extname('T482') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T482 LIMIT 1;

theCharVar = 'Hello from P19';
dsply theCharVar;
callp localProc();
P0();
P5();
P3();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P19 in the procedure';
end-proc;