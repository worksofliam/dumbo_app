**free

ctl-opt dftactgrp(*no);

dcl-pi P1950;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1616.rpgleinc'
/copy 'qrpgleref/P145.rpgleinc'
/copy 'qrpgleref/P329.rpgleinc'

dcl-ds theTable extname('T411') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T411 LIMIT 1;

theCharVar = 'Hello from P1950';
dsply theCharVar;
callp localProc();
P1616();
P145();
P329();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1950 in the procedure';
end-proc;