**free

ctl-opt dftactgrp(*no);

dcl-pi P3538;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1458.rpgleinc'
/copy 'qrpgleref/P3175.rpgleinc'
/copy 'qrpgleref/P2309.rpgleinc'

dcl-ds T1804 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1804 FROM T1804 LIMIT 1;

theCharVar = 'Hello from P3538';
dsply theCharVar;
callp localProc();
P1458();
P3175();
P2309();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3538 in the procedure';
end-proc;