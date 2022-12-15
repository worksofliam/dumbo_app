**free

ctl-opt dftactgrp(*no);

dcl-pi P155;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P67.rpgleinc'
/copy 'qrpgleref/P147.rpgleinc'
/copy 'qrpgleref/P123.rpgleinc'

dcl-ds T202 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T202 FROM T202 LIMIT 1;

theCharVar = 'Hello from P155';
dsply theCharVar;
callp localProc();
P67();
P147();
P123();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P155 in the procedure';
end-proc;