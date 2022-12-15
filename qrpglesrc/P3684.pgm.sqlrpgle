**free

ctl-opt dftactgrp(*no);

dcl-pi P3684;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1782.rpgleinc'
/copy 'qrpgleref/P679.rpgleinc'
/copy 'qrpgleref/P656.rpgleinc'

dcl-ds theTable extname('T633') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T633 LIMIT 1;

theCharVar = 'Hello from P3684';
dsply theCharVar;
callp localProc();
P1782();
P679();
P656();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3684 in the procedure';
end-proc;