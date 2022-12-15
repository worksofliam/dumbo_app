**free

ctl-opt dftactgrp(*no);

dcl-pi P754;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P169.rpgleinc'
/copy 'qrpgleref/P453.rpgleinc'
/copy 'qrpgleref/P156.rpgleinc'

dcl-ds theTable extname('T237') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T237 LIMIT 1;

theCharVar = 'Hello from P754';
dsply theCharVar;
callp localProc();
P169();
P453();
P156();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P754 in the procedure';
end-proc;