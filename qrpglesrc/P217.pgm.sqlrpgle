**free

ctl-opt dftactgrp(*no);

dcl-pi P217;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P132.rpgleinc'
/copy 'qrpgleref/P38.rpgleinc'
/copy 'qrpgleref/P165.rpgleinc'

dcl-ds T193 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T193 FROM T193 LIMIT 1;

theCharVar = 'Hello from P217';
dsply theCharVar;
callp localProc();
P132();
P38();
P165();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P217 in the procedure';
end-proc;