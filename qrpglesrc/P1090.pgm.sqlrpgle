**free

ctl-opt dftactgrp(*no);

dcl-pi P1090;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P386.rpgleinc'
/copy 'qrpgleref/P996.rpgleinc'
/copy 'qrpgleref/P726.rpgleinc'

dcl-ds theTable extname('T47') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T47 LIMIT 1;

theCharVar = 'Hello from P1090';
dsply theCharVar;
callp localProc();
P386();
P996();
P726();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1090 in the procedure';
end-proc;