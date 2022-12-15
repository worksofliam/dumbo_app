**free

ctl-opt dftactgrp(*no);

dcl-pi P449;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P392.rpgleinc'
/copy 'qrpgleref/P199.rpgleinc'
/copy 'qrpgleref/P374.rpgleinc'

dcl-ds T1034 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1034 FROM T1034 LIMIT 1;

theCharVar = 'Hello from P449';
dsply theCharVar;
callp localProc();
P392();
P199();
P374();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P449 in the procedure';
end-proc;