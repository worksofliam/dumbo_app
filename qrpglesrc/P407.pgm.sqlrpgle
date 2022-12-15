**free

ctl-opt dftactgrp(*no);

dcl-pi P407;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P16.rpgleinc'
/copy 'qrpgleref/P64.rpgleinc'
/copy 'qrpgleref/P162.rpgleinc'

dcl-ds theTable extname('T1162') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1162 LIMIT 1;

theCharVar = 'Hello from P407';
dsply theCharVar;
callp localProc();
P16();
P64();
P162();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P407 in the procedure';
end-proc;