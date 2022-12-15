**free

ctl-opt dftactgrp(*no);

dcl-pi P1637;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1611.rpgleinc'
/copy 'qrpgleref/P1007.rpgleinc'
/copy 'qrpgleref/P296.rpgleinc'

dcl-ds T1275 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1275 FROM T1275 LIMIT 1;

theCharVar = 'Hello from P1637';
dsply theCharVar;
callp localProc();
P1611();
P1007();
P296();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1637 in the procedure';
end-proc;