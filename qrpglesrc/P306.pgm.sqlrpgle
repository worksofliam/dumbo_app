**free

ctl-opt dftactgrp(*no);

dcl-pi P306;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P163.rpgleinc'
/copy 'qrpgleref/P248.rpgleinc'
/copy 'qrpgleref/P207.rpgleinc'

dcl-ds theTable extname('T1187') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1187 LIMIT 1;

theCharVar = 'Hello from P306';
dsply theCharVar;
callp localProc();
P163();
P248();
P207();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P306 in the procedure';
end-proc;