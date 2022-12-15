**free

ctl-opt dftactgrp(*no);

dcl-pi P871;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P829.rpgleinc'
/copy 'qrpgleref/P175.rpgleinc'
/copy 'qrpgleref/P110.rpgleinc'

dcl-ds theTable extname('T20') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T20 LIMIT 1;

theCharVar = 'Hello from P871';
dsply theCharVar;
callp localProc();
P829();
P175();
P110();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P871 in the procedure';
end-proc;