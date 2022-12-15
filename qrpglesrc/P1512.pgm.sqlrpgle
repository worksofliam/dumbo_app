**free

ctl-opt dftactgrp(*no);

dcl-pi P1512;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P576.rpgleinc'
/copy 'qrpgleref/P1219.rpgleinc'
/copy 'qrpgleref/P1430.rpgleinc'

dcl-ds theTable extname('T131') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T131 LIMIT 1;

theCharVar = 'Hello from P1512';
dsply theCharVar;
callp localProc();
P576();
P1219();
P1430();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1512 in the procedure';
end-proc;