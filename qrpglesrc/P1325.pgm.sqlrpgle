**free

ctl-opt dftactgrp(*no);

dcl-pi P1325;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P855.rpgleinc'
/copy 'qrpgleref/P966.rpgleinc'
/copy 'qrpgleref/P362.rpgleinc'

dcl-ds T187 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T187 FROM T187 LIMIT 1;

theCharVar = 'Hello from P1325';
dsply theCharVar;
callp localProc();
P855();
P966();
P362();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1325 in the procedure';
end-proc;