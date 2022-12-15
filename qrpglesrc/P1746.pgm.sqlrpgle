**free

ctl-opt dftactgrp(*no);

dcl-pi P1746;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P539.rpgleinc'
/copy 'qrpgleref/P1620.rpgleinc'
/copy 'qrpgleref/P820.rpgleinc'

dcl-ds theTable extname('T1120') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1120 LIMIT 1;

theCharVar = 'Hello from P1746';
dsply theCharVar;
callp localProc();
P539();
P1620();
P820();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1746 in the procedure';
end-proc;