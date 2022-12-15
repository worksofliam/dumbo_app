**free

ctl-opt dftactgrp(*no);

dcl-pi P1952;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1871.rpgleinc'
/copy 'qrpgleref/P1102.rpgleinc'
/copy 'qrpgleref/P693.rpgleinc'

dcl-ds theTable extname('T1119') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1119 LIMIT 1;

theCharVar = 'Hello from P1952';
dsply theCharVar;
callp localProc();
P1871();
P1102();
P693();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1952 in the procedure';
end-proc;