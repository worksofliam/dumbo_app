**free

ctl-opt dftactgrp(*no);

dcl-pi P780;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P191.rpgleinc'
/copy 'qrpgleref/P633.rpgleinc'
/copy 'qrpgleref/P596.rpgleinc'

dcl-ds T980 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T980 FROM T980 LIMIT 1;

theCharVar = 'Hello from P780';
dsply theCharVar;
callp localProc();
P191();
P633();
P596();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P780 in the procedure';
end-proc;