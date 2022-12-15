**free

ctl-opt dftactgrp(*no);

dcl-pi P5329;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1543.rpgleinc'
/copy 'qrpgleref/P1259.rpgleinc'
/copy 'qrpgleref/P5298.rpgleinc'

dcl-ds theTable extname('T1874') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1874 LIMIT 1;

theCharVar = 'Hello from P5329';
dsply theCharVar;
callp localProc();
P1543();
P1259();
P5298();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5329 in the procedure';
end-proc;