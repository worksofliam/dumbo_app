**free

ctl-opt dftactgrp(*no);

dcl-pi P59;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P36.rpgleinc'
/copy 'qrpgleref/P40.rpgleinc'
/copy 'qrpgleref/P18.rpgleinc'

dcl-ds T643 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T643 FROM T643 LIMIT 1;

theCharVar = 'Hello from P59';
dsply theCharVar;
callp localProc();
P36();
P40();
P18();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P59 in the procedure';
end-proc;