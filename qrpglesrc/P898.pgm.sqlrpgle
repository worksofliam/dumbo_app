**free

ctl-opt dftactgrp(*no);

dcl-pi P898;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P126.rpgleinc'
/copy 'qrpgleref/P625.rpgleinc'
/copy 'qrpgleref/P679.rpgleinc'

dcl-ds theTable extname('T365') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T365 LIMIT 1;

theCharVar = 'Hello from P898';
dsply theCharVar;
callp localProc();
P126();
P625();
P679();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P898 in the procedure';
end-proc;