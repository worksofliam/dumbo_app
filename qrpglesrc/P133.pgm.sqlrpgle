**free

ctl-opt dftactgrp(*no);

dcl-pi P133;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P17.rpgleinc'
/copy 'qrpgleref/P31.rpgleinc'
/copy 'qrpgleref/P34.rpgleinc'

dcl-ds theTable extname('T386') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T386 LIMIT 1;

theCharVar = 'Hello from P133';
dsply theCharVar;
callp localProc();
P17();
P31();
P34();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P133 in the procedure';
end-proc;