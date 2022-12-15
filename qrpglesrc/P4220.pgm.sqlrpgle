**free

ctl-opt dftactgrp(*no);

dcl-pi P4220;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3908.rpgleinc'
/copy 'qrpgleref/P925.rpgleinc'
/copy 'qrpgleref/P1900.rpgleinc'

dcl-ds T1336 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1336 FROM T1336 LIMIT 1;

theCharVar = 'Hello from P4220';
dsply theCharVar;
callp localProc();
P3908();
P925();
P1900();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4220 in the procedure';
end-proc;