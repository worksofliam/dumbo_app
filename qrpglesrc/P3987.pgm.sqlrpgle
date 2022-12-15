**free

ctl-opt dftactgrp(*no);

dcl-pi P3987;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1939.rpgleinc'
/copy 'qrpgleref/P284.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'

dcl-ds theTable extname('T560') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T560 LIMIT 1;

theCharVar = 'Hello from P3987';
dsply theCharVar;
callp localProc();
P1939();
P284();
P0();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3987 in the procedure';
end-proc;