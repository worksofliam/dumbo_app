**free

ctl-opt dftactgrp(*no);

dcl-pi P4637;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P782.rpgleinc'
/copy 'qrpgleref/P178.rpgleinc'
/copy 'qrpgleref/P3083.rpgleinc'

dcl-ds theTable extname('T1625') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1625 LIMIT 1;

theCharVar = 'Hello from P4637';
dsply theCharVar;
callp localProc();
P782();
P178();
P3083();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4637 in the procedure';
end-proc;