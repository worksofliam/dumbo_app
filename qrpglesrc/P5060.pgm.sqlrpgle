**free

ctl-opt dftactgrp(*no);

dcl-pi P5060;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P969.rpgleinc'
/copy 'qrpgleref/P2387.rpgleinc'
/copy 'qrpgleref/P1982.rpgleinc'

dcl-ds theTable extname('T952') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T952 LIMIT 1;

theCharVar = 'Hello from P5060';
dsply theCharVar;
callp localProc();
P969();
P2387();
P1982();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5060 in the procedure';
end-proc;