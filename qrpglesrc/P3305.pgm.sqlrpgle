**free

ctl-opt dftactgrp(*no);

dcl-pi P3305;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2138.rpgleinc'
/copy 'qrpgleref/P58.rpgleinc'
/copy 'qrpgleref/P1922.rpgleinc'

dcl-ds theTable extname('T992') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T992 LIMIT 1;

theCharVar = 'Hello from P3305';
dsply theCharVar;
callp localProc();
P2138();
P58();
P1922();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3305 in the procedure';
end-proc;