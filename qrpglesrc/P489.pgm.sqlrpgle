**free

ctl-opt dftactgrp(*no);

dcl-pi P489;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P163.rpgleinc'
/copy 'qrpgleref/P319.rpgleinc'
/copy 'qrpgleref/P114.rpgleinc'

dcl-ds theTable extname('T492') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T492 LIMIT 1;

theCharVar = 'Hello from P489';
dsply theCharVar;
callp localProc();
P163();
P319();
P114();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P489 in the procedure';
end-proc;