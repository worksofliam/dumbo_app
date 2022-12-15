**free

ctl-opt dftactgrp(*no);

dcl-pi P940;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P520.rpgleinc'
/copy 'qrpgleref/P111.rpgleinc'
/copy 'qrpgleref/P813.rpgleinc'

dcl-ds theTable extname('T1413') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1413 LIMIT 1;

theCharVar = 'Hello from P940';
dsply theCharVar;
callp localProc();
P520();
P111();
P813();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P940 in the procedure';
end-proc;