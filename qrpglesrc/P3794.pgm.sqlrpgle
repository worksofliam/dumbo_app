**free

ctl-opt dftactgrp(*no);

dcl-pi P3794;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P25.rpgleinc'
/copy 'qrpgleref/P807.rpgleinc'
/copy 'qrpgleref/P1900.rpgleinc'

dcl-ds theTable extname('T894') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T894 LIMIT 1;

theCharVar = 'Hello from P3794';
dsply theCharVar;
callp localProc();
P25();
P807();
P1900();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3794 in the procedure';
end-proc;