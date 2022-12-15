**free

ctl-opt dftactgrp(*no);

dcl-pi P1844;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1088.rpgleinc'
/copy 'qrpgleref/P772.rpgleinc'
/copy 'qrpgleref/P1164.rpgleinc'

dcl-ds T537 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T537 FROM T537 LIMIT 1;

theCharVar = 'Hello from P1844';
dsply theCharVar;
callp localProc();
P1088();
P772();
P1164();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1844 in the procedure';
end-proc;