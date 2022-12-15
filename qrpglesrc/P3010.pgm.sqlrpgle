**free

ctl-opt dftactgrp(*no);

dcl-pi P3010;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P616.rpgleinc'
/copy 'qrpgleref/P2100.rpgleinc'
/copy 'qrpgleref/P1854.rpgleinc'

dcl-ds theTable extname('T700') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T700 LIMIT 1;

theCharVar = 'Hello from P3010';
dsply theCharVar;
callp localProc();
P616();
P2100();
P1854();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3010 in the procedure';
end-proc;