**free

ctl-opt dftactgrp(*no);

dcl-pi P879;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P633.rpgleinc'
/copy 'qrpgleref/P220.rpgleinc'
/copy 'qrpgleref/P57.rpgleinc'

dcl-ds theTable extname('T1209') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1209 LIMIT 1;

theCharVar = 'Hello from P879';
dsply theCharVar;
callp localProc();
P633();
P220();
P57();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P879 in the procedure';
end-proc;