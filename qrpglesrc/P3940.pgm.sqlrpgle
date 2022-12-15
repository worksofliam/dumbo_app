**free

ctl-opt dftactgrp(*no);

dcl-pi P3940;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P705.rpgleinc'
/copy 'qrpgleref/P1229.rpgleinc'
/copy 'qrpgleref/P3402.rpgleinc'

dcl-ds theTable extname('T1818') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1818 LIMIT 1;

theCharVar = 'Hello from P3940';
dsply theCharVar;
callp localProc();
P705();
P1229();
P3402();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3940 in the procedure';
end-proc;