**free

ctl-opt dftactgrp(*no);

dcl-pi P1500;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1433.rpgleinc'
/copy 'qrpgleref/P456.rpgleinc'
/copy 'qrpgleref/P717.rpgleinc'

dcl-ds T1502 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1502 FROM T1502 LIMIT 1;

theCharVar = 'Hello from P1500';
dsply theCharVar;
callp localProc();
P1433();
P456();
P717();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1500 in the procedure';
end-proc;