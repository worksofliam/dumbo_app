**free

ctl-opt dftactgrp(*no);

dcl-pi P1754;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P350.rpgleinc'
/copy 'qrpgleref/P451.rpgleinc'
/copy 'qrpgleref/P962.rpgleinc'

dcl-ds T1234 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1234 FROM T1234 LIMIT 1;

theCharVar = 'Hello from P1754';
dsply theCharVar;
callp localProc();
P350();
P451();
P962();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1754 in the procedure';
end-proc;