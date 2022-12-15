**free

ctl-opt dftactgrp(*no);

dcl-pi P844;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P510.rpgleinc'
/copy 'qrpgleref/P742.rpgleinc'
/copy 'qrpgleref/P51.rpgleinc'

dcl-ds theTable extname('T11') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T11 LIMIT 1;

theCharVar = 'Hello from P844';
dsply theCharVar;
callp localProc();
P510();
P742();
P51();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P844 in the procedure';
end-proc;