**free

ctl-opt dftactgrp(*no);

dcl-pi P1249;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P993.rpgleinc'
/copy 'qrpgleref/P433.rpgleinc'
/copy 'qrpgleref/P735.rpgleinc'

dcl-ds theTable extname('T1843') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1843 LIMIT 1;

theCharVar = 'Hello from P1249';
dsply theCharVar;
callp localProc();
P993();
P433();
P735();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1249 in the procedure';
end-proc;