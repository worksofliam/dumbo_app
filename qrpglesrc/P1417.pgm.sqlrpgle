**free

ctl-opt dftactgrp(*no);

dcl-pi P1417;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1036.rpgleinc'
/copy 'qrpgleref/P19.rpgleinc'
/copy 'qrpgleref/P273.rpgleinc'

dcl-ds theTable extname('T697') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T697 LIMIT 1;

theCharVar = 'Hello from P1417';
dsply theCharVar;
callp localProc();
P1036();
P19();
P273();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1417 in the procedure';
end-proc;