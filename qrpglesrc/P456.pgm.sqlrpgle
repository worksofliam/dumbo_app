**free

ctl-opt dftactgrp(*no);

dcl-pi P456;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P12.rpgleinc'
/copy 'qrpgleref/P89.rpgleinc'
/copy 'qrpgleref/P110.rpgleinc'

dcl-ds T130 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T130 FROM T130 LIMIT 1;

theCharVar = 'Hello from P456';
dsply theCharVar;
callp localProc();
P12();
P89();
P110();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P456 in the procedure';
end-proc;