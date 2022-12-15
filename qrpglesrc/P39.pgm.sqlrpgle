**free

ctl-opt dftactgrp(*no);

dcl-pi P39;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P7.rpgleinc'
/copy 'qrpgleref/P17.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'

dcl-ds T1082 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1082 FROM T1082 LIMIT 1;

theCharVar = 'Hello from P39';
dsply theCharVar;
callp localProc();
P7();
P17();
P0();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P39 in the procedure';
end-proc;