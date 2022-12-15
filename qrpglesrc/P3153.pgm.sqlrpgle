**free

ctl-opt dftactgrp(*no);

dcl-pi P3153;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P337.rpgleinc'
/copy 'qrpgleref/P675.rpgleinc'
/copy 'qrpgleref/P2299.rpgleinc'

dcl-ds T652 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T652 FROM T652 LIMIT 1;

theCharVar = 'Hello from P3153';
dsply theCharVar;
callp localProc();
P337();
P675();
P2299();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3153 in the procedure';
end-proc;