**free

ctl-opt dftactgrp(*no);

dcl-pi P301;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P299.rpgleinc'
/copy 'qrpgleref/P232.rpgleinc'
/copy 'qrpgleref/P43.rpgleinc'

dcl-ds T310 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T310 FROM T310 LIMIT 1;

theCharVar = 'Hello from P301';
dsply theCharVar;
callp localProc();
P299();
P232();
P43();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P301 in the procedure';
end-proc;